# Wildgrass:

Wildgrass is a colorscheme consisting of only green--that is, the RGB of every color is such that G > B and G > R. It comes with a light variation (soft green background with dark gray green text) and a dark variation (dark gray green background with soft green text). 

# Palette:

# Screenshots:

## Light Mode:

![Screenshot from 2022-02-20 00-53-51](https://user-images.githubusercontent.com/74194607/154830539-78837ecd-9be8-4531-b41e-d5f3a0eb723f.png)

## Dark Mode: 

![Screenshot from 2022-02-20 00-53-25](https://user-images.githubusercontent.com/74194607/154830545-c1f8f870-6a6c-4118-95fe-302781c11be7.png)

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
