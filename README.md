# Wildgrass:

Wildgrass consists of just shades of green &mdash; more precisely, green is always the highest value in any color. It provides a dark and light variation and a few handy customization options.  

# Palette:

Colors are chosen for so that contrast is even and legible in both light and dark variations. Each color has an assigned name of either gray, jade, lime, pear, drab, aqua, sage, and teal. Wildgrass also contains 8 different background variations for each of these colors, and you can change the background colors of light and dark mode independently of each other. You also have the options of soft/medium/hard to change the contrast of the background with text. The default backgrounds for light and dark are sage, and the default contrast is medium, but this can be changed by adding, for example,

```
let g:variant_dark = 'jade'
let g:variant_light = 'gray'
let g:variant_contrast = 'hard'
```

to your .vimrc file. 

# Screenshots:

This should give you a sense of what can be created with the available configuration options:

![Screencast-from-05-12-2022-01_38_54-AM](https://user-images.githubusercontent.com/74194607/168000188-4a760143-9567-4d73-b181-0f907814d8f5.gif)

# Installation:

## Pathogen:

Simply clone into the directory where you keep your plugins. For example, 

```
cd ~/.vim/bundle/ && git clone https://github.com/mathofprimes/wildgrass.git
```

## Vim-Plug:

Add 

```Plug 'mathofprimes/wildgrass'``` 

to you're .vimrc file and run ```:PlugInstall``` in Vim.

## Vundle: 

Add 

```Plugin 'mathofprimes/wildgrass'``` 

to you're .vimrc file and run ```:PluginInstall``` in Vim.

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
