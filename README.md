# Wildgrass:

Wildgrass uses just shades of green &mdash; more precisely, green is always the highest value of any color. Each color is designated as either gray, jade, lime, pear, drab, aqua, sage, and teal, with 4 darker or lighter shades of these colors being used for background colors in dark or light mode. Users can set contrast to soft, medium, or hard, and set the background colors of dark or light mode independently to one of the available designated colors, thus creating their own unique variation of Wildgrass. By default, backgrounds for dark and light mode is sage, and the default contrast is medium.

![wildgrass](https://user-images.githubusercontent.com/74194607/169200607-27b595da-3dfd-43bd-b30e-a32fbd3eaaf6.gif)

# Features:

## Dark Mode / Light Mode:

The background colors in dark mode can be set by adding, for example,

```
let g:variant_dark = 'jade'
```

to your .vimrc file. Similiarly, light mode can be adjusted by adding

```
let g:variant_light = 'pear'
```

## Contrast

### Soft:

To set contrast to soft, add this to your .vimrc file:

```
let g:variant_contrast = 'soft'
```

### Medium:

To set contrast to medium, add this to your .vimrc file:

```
let g:variant_contrast = 'medium'
```

### Hard:

To set contrast to hard, add this to your .vimrc file:

```
let g:variant_contrast = 'hard'
```

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
