# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with dark gray green text) and a dark variation (dark gray green background with soft green text). 

# Palette:

# Screenshots:

## Light Mode:

![Screenshot from 2022-02-19 00-57-15](https://user-images.githubusercontent.com/74194607/154788506-00ad5cf2-7f1d-4fe9-bbe8-b468f062e682.png)

## Dark Mode: 

![Screenshot from 2022-02-19 00-57-50](https://user-images.githubusercontent.com/74194607/154788514-2bc51bcf-93d4-4033-a249-7f141cd45f24.png)

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
