#dotfiles
![](https://img.shields.io/badge/works%20on-Ubuntu-DD4814.svg)

ViM dev environment

Optimized for Python, C, C++ development


##Installation

**WARNING**: Some of these configurations are intended for my personal use, it may
conflict with some settings already configured on your system. Tread lightly.

`cd ~`

`git clone https://github.com/apeduru/dotfiles`

`cd dotfiles`

`sudo bash install.sh ycm`


##Mappings

<kbd>F2</kbd> to toggle NERDTree

<kbd>F3</kbd> to open TagBar

<kbd>F4</kbd> to do code search using Ack

<kbd>F5</kbd> to autoformat (Python, C++)


##Debugging

`vim --startuptime vim.log`

`cat vim.log | sort -k 2`


##Known Issues

Terminal colours

In BASH: xterm

In tmux: screen-256colour

Build Vim from source


##Misc

[Neovim](https://neovim.io)

[Astyle](http://astyle.sourceforge.net/)

[Autopep8](https://pypi.python.org/pypi/autopep8)/[PEP8](https://www.python.org/dev/peps/pep-0008/)

[Ack](https://beyondgrep.com/)
