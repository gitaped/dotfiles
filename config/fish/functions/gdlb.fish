function gdlb -d "Delete local branches already mereged to master"
    git branch --merged master --no-color | grep -v '^[*]*master$' | xargs git branch -d
end

