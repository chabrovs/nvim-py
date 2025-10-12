# `nvim-py`: NeoVim For Python🐍
Fast, feature-rich setup for NeoVim 0.11.4+. Uses lazy.nvim and Mason for easy management. Includes optimized LSP, linting, and debugging for Python and its frameworks. Boost your coding speed!
- 🐍 Python-focused tools

- 🚀 Lazy loading

- 🛠️ Mason for LSPs/tools

- ⚡ Fast performance

- 🔧 Python Debugger

## 💾 Installation (step-by-step):

### (Optional*) Install Prerequisites:
_NOTE: *(If all prerequisites are already installed this step can be skipped.)_

1. Install Nvim binary:
    - Download Nvim binary from the Nvim official repository: https://github.com/neovim/neovim/releases
    - Install the binary:
        - In Linux:  
           __Execute these commands sequentially:__   
 
           ```
           mv ~/Downloads/<your_nvim> /usr/local/bin/nvim
           sudo chmod x+o /usr/local/bin/nvim
           ```
2. Install npm:  
_NOTE: NPM is required for Node.js_  
```sudo apt install npm```

4. Install nodejs:  
_NOTE: NodeJS is required for LSP servers._  
__Execute these commands sequentially:__  
    ```
    sudo apt install nodejs
    npm install -g n
    sudo n lts
    ```

6. Install required system packages:  
   ```
   sudo apt install ripgrep
   ```

### (Required) Install the Nvim Config Itself:  
1. BackUp your current NVim config:  
```mv ~/.config/nvim{,.bak}```.

2. Clone this repo:  
```git clone git@github.com:chabrovs/nvim-py.git ~/.config/nvim```.

3. Run Nvim:  
```nvim .```   
_NOTE: The lazy.vim package manager will take care of plugins, and Mason will take care of LSP servers aumatically._

### Python Debugger installation:

There two options on how to setup a Python debugger in this configuration.

0️⃣ Execute `pip install debugpy` in your project's virtual environment.  
1️⃣ Or, Install Python debugger globally for NVim:
  1. Go to the nvim directory: `cd ~/.config/nvim`;
  2. Create a new directory called `.virtualenvs` and cd in it `cd ~/.config/nvim/.virtualenvs`;
  3. Create a new virtual environment called `debugpy` in the `.virualenvs` directory: `python3 -m venv debugpy` and activate it: `. .virtualenvs/debugpy/bin/activate`
  4. Execute `pip install debugpy`
  5. It's done! Now Python debugger is available globally for your NVim configuration.

## ⌨️ ShortCuts:
### 📁 File finder & Fuzzy finder:
|KeyMap|Descripton|Remender|
|-|-|-|
|__`<leader>pf`__|Open Fuzzy Finder|Project Find|
|__`<leader>ps`__|Open Fuzzy Grep String|Project Search|
|__`<leader>pg`__|Open Fuzzy Live Grep|Progect Grep|
|__`<leader><C-p>`__|Open Fuzzy Finder for Git project||
|__`<leader><pv>`__|Open File Explorer|Project View|

### 📑 Tabs:
|KeyMap|Description
|-|-|
|__`<leader>t`__|New tab|
|__`<leader>tt`__|Open Terminal|
|__`<leader>right arrow`__|Switch Tab|
|__`<leader>left arrow`__|Switch Tab|

### 🔎 Diagnostics:
|KeyMap|Descripton|
|-|-|
|__`<leader>do`__|Open Diagnostics|
|__`<leader>dl`__|List Diagnostics|
|__`<leader>dp`__|Go to Previous Message|
|__`<leader>dn`__|Go to New Message|

### 🖊️ LSP & Formatters
|KeyMap|Descripton|
|-|-|
|__`<leader>m`__|Hover|
|__`<leader>df`__|Do to Definiiton|
|__`<leader>i`__|Implemnetation|
|__`<leader>fx`__|Show fix suggestiosn|
|__`<leader>rf`__|Show References|
|__`<leader>mv`__|Remane|
|__`<leader>f`__|Format|

### 🐍 Python Debugger:
|KeyMap|Descripton|
|-|-|
|__`<leader>Db`__|Set break point|
|__`<leader>Ds`__|Debugger Start|
|__`<leader>Do`__|Debugger Open|
|__`<leader>Dc`__|Debugger Close|
