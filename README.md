# nvim-py
Fast, feature-rich setup for NeoVim 0.11.04+. Uses lazy.nvim and Mason for easy management. Includes optimized LSP, linting, and debugging for Python and its frameworks. Boost your coding speed!
- 🐍 Python focused tools

- 🚀 Lazy loading

- 🛠️ Mason for LSPs/tools

- ⚡ Fast performance

# Installation (step-by-step):

### (Optional*) Intall Prerequisites:
_NOTE: *(If all prerequisites are alredy installed this step can be skipped.)_

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
_NOTE: NPM is requierd for Node.js_  
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
