# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with gray text) and a dark variation (dark gray background with soft green text). 

# Palette:

# Screenshots:

## Light Mode (Early Look):

![Screenshot from 2022-02-17 02-16-22](https://user-images.githubusercontent.com/74194607/154425307-27df4991-bd5b-4a3e-8f21-a756604712d7.png)

## Dark Mode: 

![Screenshot from 2022-02-17 02-17-04](https://user-images.githubusercontent.com/74194607/154425356-dd9c45de-8a74-43ba-914e-07a39adc9e1c.png)

# Installation:

## Pathogen:

Simply clone Wildgrass into the directory where you keep your plugins. For example, 

```
cd ~/.vim/bundle/ && git clone https://github.com/mathofprimes/wildgrass.git
```

## Vim-Plug:

Add ```Plug 'mathofprimes/wildgrass'``` to you're .vimrc file and run ```:PlugInstall``` in Vim.

## Vundle: 

Add ```Plugin 'mathofprimes/wildgrass'``` to you're .vimrc file and run ```:PluginInstall``` in Vim.

# Usage:

After installation, add the following to your vimrc to use:

```
colorscheme wildgrass
set background=<dark or light>
