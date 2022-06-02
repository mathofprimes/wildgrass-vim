# Wildgrass:

Wildgrass uses just shades of green &mdash; more precisely, green is always the highest value of any color. Each color is designated as either gray, jade, lime, pear, drab, aqua, sage, and teal, with 4 darker or lighter shades of these colors being used for background colors in dark or light mode. Users can set contrast to soft, medium, or hard, and set the background colors of dark or light mode independently to one of the available designated colors, thus creating their own unique variation of Wildgrass. By default, backgrounds for dark and light mode is sage, and the default contrast is medium.

![wildgrass](https://user-images.githubusercontent.com/74194607/169200607-27b595da-3dfd-43bd-b30e-a32fbd3eaaf6.gif)

# Features

## Dark Mode / Light Mode:

The background colors in dark mode can be set by adding, for example,

```
let g:wildgrass_dark = 'jade'
```

to your .vimrc file. Similiarly, light mode can be adjusted by adding

```
let g:wildgrass_light = 'pear'
```

Dark mode will now have a jade background, and light mode will have a pear background. The 4 light colors used in dark mode will be pear, whereas the 4 dark colors in light mode will be jade.

## Contrast:

Contrast changes three different things: how bright dark colors are, how bright light colors are, and the contrast between different syntax (e.g. comments appear darker, and variable names appear brighter).

### Soft:

To set contrast to soft, add this to your .vimrc file:

```
let g:wildgrass_contrast = 'soft'
```
> In dark mode, dark colors are slightly brighter, and text is slightly darker. In light mode, light colors are slightly darker, and dark colors are slightly lighter. Contrast between syntax is minimal. 

### Medium:

To set contrast to medium, add this to your .vimrc file:

```
let g:wildgrass_contrast = 'medium'
```
> Contrast is a halfway between soft and medium, intended to be pleasant for most users.

### Hard:

To set contrast to hard, add this to your .vimrc file:

```
let g:wildgrass_contrast = 'hard'
```
> In dark mode, dark colors are slightly darker, and text is slightly brighter. In light mode, light colors are slightly lighter, and dark colors are slightly darker. Contrast between syntax is heavy.

# Palette:

Green is pleasant to look at for long coding sessions, so it is a natural choice for a colorscheme. Each designated color has a unique, set ratio of red/green/blue intended to make it as distinguishable as possible from the others. Unlike most colorschemes, the code for Wildgrass does not need the author explicitly state what each color is and, for example, assign it to a dictionary and then a highlight group. Rather, a function takes user settings and generates the correct colorscheme based off the ratio of red/green/blue of each color. This ensure users always get the colors they expect while also reducing code complexity and allowing more configuration options.

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
