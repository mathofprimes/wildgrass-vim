# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with dark gray green text) and a dark variation (dark gray green background with soft green text). 

# Palette:

# Screenshots:

## Light Mode:

![Screenshot from 2022-02-17 20-14-50](https://user-images.githubusercontent.com/74194607/154599357-8856e15f-3d6e-4791-b077-bab6fb078742.png)

## Dark Mode: 

![Screenshot from 2022-02-17 20-15-09](https://user-images.githubusercontent.com/74194607/154599373-f365c2f3-3f0c-40f6-bb37-b6715f1dbf1c.png)

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
