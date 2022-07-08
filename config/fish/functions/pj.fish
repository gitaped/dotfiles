function pj -d "personal journal"
    if ! test -d $JOURNAL_PATH;
        echo "JOURNAL_PATH does not exist"
        return 1
    end

    if ! git -C $JOURNAL_PATH rev-parse 2>/dev/null
        echo "$JOURNAL_PATH is not a git repo"
        return 1
    end

    set --local JOURNAL_HELP "usage:
    journal 
    journal [y w s m q]
    journal search PATTERN
    journal commit
    journal log
    journal help
    "

    # Hashmap implementation (not yet avaiable in fish)
    # Mapping ranges to time in days
    # Source: https://mvolkmann.github.io/fish-article/#Hashmaps
    set --local range_w 7
    set --local range_s 14
    set --local range_m 31
    set --local range_q 90
    set --local range_a 365

    set --local dt (date +"%Y/%m/%d")
    set --local entry $JOURNAL_PATH/$dt.md

    switch $argv[1]
        case ""
        # today
            mkdir -p (dirname $entry)
            test -e $entry || echo "# $dt" >> $entry
            $EDITOR $entry
        case y
        # yesterday
            set --local page $JOURNAL_PATH/(date -v-1d +"%Y/%m/%d").md 
            test ! -e $page || cat $page | less
        case w s m q a
        # last {week, sprint, month, quarter}
            for day in (seq (eval echo '$'range_$argv) 0) # chronological order
                set --local page $JOURNAL_PATH/(date -v-"$day"d +"%Y/%m/%d").md 
                test ! -e $page && continue || cat $page && echo
            end | less
        case commit
            if test (git -C $JOURNAL_PATH status --porcelain | wc -l) -gt 0
                git -C $JOURNAL_PATH add -A
                git -C $JOURNAL_PATH commit -m $dt
                git -C $JOURNAL_PATH push origin HEAD
            else
                echo "no entries to commit"
                return 1
            end
        case search
            rg --sort path $argv[2] $JOURNAL_PATH
        case log
            git -C $JOURNAL_PATH log
        case \*
            echo $JOURNAL_HELP
            return 1
    end

    return 0
end
