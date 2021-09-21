function select -d "Read the elements of an array (1-indexed)"
    read --local --array --null arr
    echo $arr[$argv]
end

