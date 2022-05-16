# Wildgrass:

Wildgrass is a 16 color palette consisting of just shades of green &mdash; more precisely, green is always the highest value in any color. Despite using just green, each color is carefully chosen and designated as either gray, jade, lime, pear, drab, aqua, sage, and teal, with 4 darker or lighter shades of these colors being used for background colors in dark or light mode. There are also soft/medium/hard options to change the contrast of text with background colors.

Wildgrass is not one set colorscheme; in addition to their prefered level of contrast, the user is free to choose to set the background colors in dark or light mode independently of each other to a color of their choosing from the 8 available designated colors, thus creating their own unique variation of Wildgrass. There are hundreds of possible combinations which, in a sense, probably makes Wildgrass the largest colorscheme plugin there is!

The default backgrounds for dark and light mode is sage, and the default contrast is medium.

# Features:

## Dark Mode:

The background colors in dark mode can be set by adding, for example,

```
let g:variant_dark = 'jade'
```

to your .vimrc file.

## Light Mode:

The background colors in dark mode can be set by adding, for example,

```
let g:variant_dark = 'pear'
```

to your .vimrc file.

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

# Screenshots:

This should give you a sense of what can be created with the available configuration options:

![1](https://user-images.githubusercontent.com/74194607/168517125-eb6bb3e4-3fe1-41c8-bfcc-73e22616e689.png)

![2](https://user-images.githubusercontent.com/74194607/168517151-d82d5c74-7067-4530-8eb4-0ed78ebe6e56.png)

![3](https://user-images.githubusercontent.com/74194607/168517164-2dbdea81-2847-4d07-a2cb-c48a90574b49.png)

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
