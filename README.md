# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with dark gray green text) and a dark variation (dark gray green background with soft green text). 

# Palette:

# Screenshots:

## Light Mode:

![Screenshot from 2022-02-23 02-08-33](https://user-images.githubusercontent.com/74194607/155275172-33f6060d-827c-46bf-a5d2-132e2ccaa7ba.png)

## Dark Mode: 

![Screenshot from 2022-02-23 02-08-01](https://user-images.githubusercontent.com/74194607/155275196-5ab78c63-d417-431e-97f9-edafba4cef1b.png)

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
