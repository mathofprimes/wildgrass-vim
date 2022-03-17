# Wildgrass:

Wildgrass consists of just shades of green &mdash; more precisely, green is always the highest value in any color. It provides a dark and light variation and a few handy customization options.  

# Palette:

Colors are chosen for so that contrast is even and legible in both light and dark variations. Each color has an assigned name of either gray, jade, lime, pear, drab, aqua, sage, and teal. Wildgrass also contains 8 different background variations for each of these colors. The default background is gray, but this can be changed by adding, for example,

```let g:variant_name = 'jade'```

to your .vimrc file. **Note:** Development is ongoing, so only gray and jade are available. I'll update this README as more are added.

# Screenshots:

## Light Mode / Jade:

![Screenshot from 2022-03-16 23-54-28](https://user-images.githubusercontent.com/74194607/158734138-1d439eb5-15f5-4c97-8599-0dae0e35d8bf.png)

## Light Mode / Gray:

![Screenshot from 2022-03-17 00-10-59](https://user-images.githubusercontent.com/74194607/158735717-c8f66410-cf5a-4db5-8b79-ea0afdd39dbd.png)

## Dark Mode / Jade: 

![Screenshot from 2022-03-16 23-55-49](https://user-images.githubusercontent.com/74194607/158734146-82bb0686-18a1-46e0-821e-3f93d77e943e.png)

## Dark Mode / Gray:

![Screenshot from 2022-03-17 00-10-41](https://user-images.githubusercontent.com/74194607/158735749-62c1b553-3d59-42fd-b29f-00ec085d150f.png)

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
