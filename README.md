# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with dark gray green text) and a dark variation (dark gray green background with soft green text). 

# Palette:

# Screenshots:

## Light Mode:

![Screenshot from 2022-02-24 06-50-01](https://user-images.githubusercontent.com/74194607/155520422-a809291c-1c73-4a1f-935e-1f3b20d3c566.png)

## Dark Mode: 

![Screenshot from 2022-02-24 06-51-21](https://user-images.githubusercontent.com/74194607/155520469-a728dc2c-a3ec-44fd-9832-3b96fe7e0721.png)

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
