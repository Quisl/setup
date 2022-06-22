# Install Neovim
choco install neovim
# Install pynvim
pip install pynvim
# Install plug vim
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
# Install Lua
choco install lua53
# Install Ripgrep (for search within Telescope (vim Plugin))
choco install ripgrep
