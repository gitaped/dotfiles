function gnb -d "Quickly create a new git branch tracking master"
    git checkout --track -b "ap/$argv[1]/$argv[2]" origin/master
end

