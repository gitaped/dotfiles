function gnb -d "Quickly create a new git branch tracking the default branch"
    set --local default (git rev-parse --abbrev-ref --symbolic-full-name @{upstream})
    git checkout --track $default -b "ap/$argv[1]/$argv[2]"
end

