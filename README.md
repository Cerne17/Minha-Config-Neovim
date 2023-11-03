# Para a Instalação funcionar corretamente:

## 1. Instalar o Neovim:
Para instalar o Neovim, siga os passos no site a seguir:
https://neovim.io/

## 2. Instalar o Packer (Gerenciador dos Plugins):

* 2.1. Linux/Unix:
    
        git clone --depth 1 https://github.com/wbthomason/packer.nvim\
         ~/.local/share/nvim/site/pack/packer/start/packer.nvim

* 2.2. Windows:

        git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

## 3. Inicializar o nvim:
    
Ao inicializar o neovim, deve-se executar o código `:PackerSync` para sincronizar todas instalações de Plugins

## 4. Reiniciar o nvim:
    
Por fim, para finalizar a instalação de todos pacotes, devemos configurar o Github Copilot, para isso, execute o comando `:Copilot setup` e siga os passos para associar sua conta do github ao nvim.

## 5. Pronto!

-------------------------------------------------------

# To make the Installation work correctly:

## 1. Install Neovim:

To install Neovim, follow the steps on the following website: https://neovim.io/

## 2. Install Packer (Plugin Manager):

* 2.1. Linux/Unix:

            git clone --depth 1 https://github.com/wbthomason/packer.nvim\
       ~/.local/share/nvim/site/pack/packer/start/packer.nvim

* 2.2. Windows:

             git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

## 3. Initialize nvim:
When initializing Neovim, you should execute the code `:PackerSync` to synchronize all Plugin installations.

## 4. Restart nvim:
Finally, to finish the installation of all packages, we need to configure Github Copilot. To do this, execute the command `:Copilot setup`  and follow the steps to associate your Github account with nvim.

## 5. Done!

-------------------------------------------------------

# TODOs:

* Configure Autopairs in a more advanced and better way
* Enhance the statusline
    * Show better informations about the CWD
    * Make it prettier
    * Stop showing the default status line (-- INSERT --)
* Create the preview of all commands followed by <leader> when pressing it (As lunar vim does, for example)

