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

`sudo ./install.sh`

##Mappings

<kbd>F3</kbd> to strip whitespace

<kbd>F4</kbd> to view and select open buffers

<kbd>Ctrl+f</kbd> to do code search using `Ack`

<kbd>Ctrl+d</kbd> to do code search using `Ack` with text currently under cursor

##Debugging

`vim --startuptime vim.log`

`cat vim.log | sort -k 2`


`:{n,i,v}map` for {normal, insert, visual} mode mappings


`$ tmux attach`

`protocol version mismatch (client 7, server 6)`

`$ pgrep tmux`

`3429`

`$ /proc/3429/exe attach`

##Known Issues

Build Vim from source

##Misc

[Neovim](https://neovim.io)

[Astyle](http://astyle.sourceforge.net/)

[Autopep8](https://pypi.python.org/pypi/autopep8)/[PEP8](https://www.python.org/dev/peps/pep-0008/)

[Ack](https://beyondgrep.com/)

[Ctags](http://ctags.sourceforge.net/)
