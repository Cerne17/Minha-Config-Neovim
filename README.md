# Para a Instalação funcionar corretamente:

## 1. Instalar o Neovim:
    Para instalar o Neovim, siga os passos no site a seguir:
    [https://neovim.io/)

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
