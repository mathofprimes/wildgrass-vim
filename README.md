# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with gray text) and a dark variation (dark gray background with soft green text). 

# Palette:

# Screenshots:

## Light Mode (Early Look):

![Screenshot from 2022-02-17 16-29-57](https://user-images.githubusercontent.com/74194607/154574125-6229c884-c4ae-4929-a460-7fc18068a0a0.png)

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

After installation, add

```
colorscheme wildgrass
set background=dark
```

to your .vimrc file to enable dark mode, or

```
colorscheme wildgrass
set background=light
```

to enable light mode.
