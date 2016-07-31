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

`sudo ./install.sh ycm`


##Mappings


<kbd>F4</kbd> to autoformat (Python, C++)

<kbd>F5</kbd> to strip whitespace

<kbd>Ctrl+f</kbd> to do code search using Ack


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

Find alternative to Ctrl-[h, j, k, l] for navigation


##Misc

[Neovim](https://neovim.io)

[Astyle](http://astyle.sourceforge.net/)

[Autopep8](https://pypi.python.org/pypi/autopep8)/[PEP8](https://www.python.org/dev/peps/pep-0008/)

[Ack](https://beyondgrep.com/)

[Ctags](http://ctags.sourceforge.net/)
