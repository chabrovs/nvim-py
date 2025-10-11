-- This module implements DEBUG functionality

local pythonPath = function()
    local command = "which python3"
    local handle = io.popen(command, "r")
    if not handle then
        print("Error(debudding.lua): Failed to execute command '" .. command .. "'")
    else
        local output = handle:read("*a")
        handle:close()
        local python3_path = output:gsub("^%s*(.-)%s*$", "%1")
        return python3_path
    end
end

return {
    "mfussenegger/nvim-dap",
    dependencies = {
        {
            "rcarriga/nvim-dap-ui",
            dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
        },
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        dapui.setup()
        dap.adapters.python = function(cb, config)
            if config.request == "attach" then
                ---@diagnostic disable-next-line: undefined-field
                local port = (config.connect or config).port
                ---@diagnostic disable-next-line: undefined-field
                local host = (config.connect or config).host or "127.0.0.1"
                cb({
                    type = "server",
                    port = assert(port, "`connect.port` is required for a python `attach` configuration"),
                    host = host,
                    options = {
                        source_filetype = "python",
                    },
                })
            else
                cb({
                    type = "executable",
                    command = "/home/serverus/.config/nvim/.virtualenvs/debugpy/bin/python",
                    args = { "-m", "debugpy.adapter" },
                    options = {
                        source_filetype = "python",
                    },
                })
            end
        end

        dap.configurations.python = {
            {
                -- The first three options are required by nvim-dap
                type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
                request = "launch",
                name = "Python file",

                -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

                program = "${file}",
                pythonPath = pythonPath()
            },
            {
                type = "python",
                request = "launch",
                name = "Django Debugger",
                program = "${workspaceFolder}/manage.py",
                args = { "runserver", "--noreload", "0.0.0.0:8000" }, -- Arguments to pass to manage.py
                cwd = function()
                    return vim.fn.getcwd()
                end,
                pythonPath = pythonPath(),
                django = true,
                justMyCode = false
            },
        }

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        vim.keymap.set("n", "<leader>Db", dap.toggle_breakpoint, { desc = "set a break point" })
        vim.keymap.set("n", "<leader>Dc", dap.continue, { desc = "continue" })
    end,
}
