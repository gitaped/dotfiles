set -x -U JOURNAL_PATH $HOME/journal

function journal
    if ! test -d $JOURNAL_PATH;
        echo "JOURNAL_PATH does not exist"
        return 1
    end

    if test (count $argv) -gt 1;
        echo "too many arguments"
        return 1
    end

    # Hashmap implementation (not yet avaiable in fish)
    # Mapping ranges to time in days
    set --local range_w 7
    set --local range_s 14
    set --local range_m 31
    set --local range_q 90

    set --local dt (date +"%Y/%m/%d")
    set --local entry $JOURNAL_PATH/$dt.md

    switch "$argv"
        case ""
        # today
            touch -c $entry
            test -e $entry || echo "# $dt" >> $entry
            $EDITOR $entry
        case y
        # yesterday
            set --local page $JOURNAL_PATH/(date -v-1d +"%Y/%m/%d").md 
            test ! -e $page || cat $page | less
        case w s m q
        # last {week, sprint, month, quarter}
            for day in (seq (eval echo '$'range_$argv) 0) # chronological order
                set --local page $JOURNAL_PATH/(date -v-"$day"d +"%Y/%m/%d").md 
                test ! -e $page && continue || cat $page && echo
            end | less
        case commit
            git -C $JOURNAL_PATH add -A
            git -C $JOURNAL_PATH commit -m $dt
            git -C $JOURNAL_PATH push origin HEAD
        case \*
            echo "usage: journal [y w s m q commit]"
            return 1
    end

    return 0
end
