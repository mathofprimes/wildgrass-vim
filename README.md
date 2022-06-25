# Wildgrass:

Wildgrass uses just shades of green &mdash; more precisely, green is always the highest value of any color. Colors are designated as pure, gray, jade, lime, pear, drab, aqua, sage, or teal. Four darker or lighter shades of a color make up the background and foreground colors in dark or light mode, which can be set independently. Soft, medium, and hard options are also available to control contrast.

<p align="center">
  <img width="49%" height="auto" src="https://user-images.githubusercontent.com/74194607/175755605-1be92d38-38cf-49e2-8834-09b4f2ff16c9.png" />
  <img width="49%" height="auto" src="https://user-images.githubusercontent.com/74194607/175755628-180004f6-8c15-411c-97a7-bbbdba95e5f9.png" />  
</p>

* With teal for dark mode, sage for light mode, and soft contrast.

<p align="center">
  <img width="49%" height="auto" src="https://user-images.githubusercontent.com/74194607/175755360-321f3899-5bdf-49fc-977e-f269967ef4d9.png" />
  <img width="49%" height="auto" src="https://user-images.githubusercontent.com/74194607/175755365-c3f65ade-68cd-4d8b-80a5-f20229de0f8d.png" />  
</p>

* Pure for dark and light mode, and medium contrast. These are the default settings.

<p align="center">
  <img width="49%" height="auto" src="https://user-images.githubusercontent.com/74194607/175755065-cf4c5f18-7078-4c7f-8573-e98b2b2d6161.png" />
  <img width="49%" height="auto" src="https://user-images.githubusercontent.com/74194607/175755167-01c06437-2739-4235-a44c-14b453a71251.png" />  
</p>

* With gray for the dark mode, drab for light mode, and hard contrast.

# Dark Mode and Light Mode:

The background colors in dark mode can be set with the name of a color,

```
let g:wildgrass_dark = 'jade'
```

or, in light mode, with

```
let g:wildgrass_light = 'lime'
```

and now dark mode will now have a jade background and lime foreground, and light mode will have a lime background and a jade foreground.

# Contrast:

Contrast changes three different things: how bright dark colors are, how bright light colors are, and the contrast between syntax (e.g. comments appear darker, and variable names appear brighter). 

```
let g:wildgrass_contrast = 'soft'
```
* In dark mode, dark colors are slightly brighter, and text is slightly darker. In light mode, light colors are slightly darker, and dark colors are slightly lighter. Contrast between syntax is minimal. 

```
let g:wildgrass_contrast = 'medium'
```
* Contrast is a halfway between soft and medium, intended to be pleasant for most users.

```
let g:wildgrass_contrast = 'hard'
```
* In dark mode, dark colors are slightly darker, and text is slightly brighter. In light mode, light colors are slightly lighter, and dark colors are slightly darker. Contrast between syntax is heavy.

# Palette:

Green is pleasant to look at, making it a natural choice for a colorscheme. Each designated color has a unique ratio of red/green/blue intended to make it as distinguishable as possible from the others. Unlike most colorschemes, Wildgrass does not rely on explicitly stating what each color is before assigning it to a highlight group. Rather, a function takes user settings and generates the correct colorscheme, thus ensuring users get the colors they expect while reducing code complexity and allowing more configuration options. The function is kept as simple as possible (about 80 lines of code) so as to not impede Vim startup time.

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
