source ~/.config/fish/work.fish

function srcfish
    source ~/.config/fish/config.fish
end

function dot
    cd ~/dotfiles; and ls
end

function gdf
    git diff $argv
end

function gbr
    git branch
end

function gst
    git status
end

