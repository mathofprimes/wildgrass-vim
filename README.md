# Wildgrass:

Wildgrass consists of just shades of green &mdash; more precisely, green is always the highest value in any color. It provides a dark and light variation and a few handy customization options.  

# Palette:

Colors are chosen for so that contrast is even and legible in both light and dark variations. Each color has an assigned name of either gray, jade, lime, pear, drab, aqua, sage, and teal. Wildgrass also contains 8 different background variations for each of these colors, and you can change if light and dark mode use different colors from each other. The default backgrounds for light and dark are gray, but this can be changed by adding, for example,

```
let g:variant_dark = 'jade'
let g:variant_light = 'gray'
```

to your .vimrc file.

# Screenshots:

## Light Mode / Drab and Gray:

![Screenshot from 2022-03-20 20-31-30](https://user-images.githubusercontent.com/74194607/159192799-d03a2835-a307-4115-908d-16d07c65e93a.png)

## Dark Mode / Drab and Gray

![Screenshot from 2022-03-20 20-31-05](https://user-images.githubusercontent.com/74194607/159192812-93d92bd8-08c3-41a7-bf0c-8df72793224f.png)

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
