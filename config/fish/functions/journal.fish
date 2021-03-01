set -x -U JOURNAL_PATH $HOME/journal

function journal
    if test (count $argv) -gt 1;
        echo "journal takes 1 argument"
        return
    end

    set --local dt (date +"%Y-%m-%d")
    set --local path $JOURNAL_PATH/(date +"%Y")/(date +"%m")
    set --local entry $path/(date +"%d").md

    switch "$argv"
        case -y --yesterday
            set --local yesterday_entry $JOURNAL_PATH/(date -v-1d +"%Y/%m/%d").md 
            test ! -e $yesterday_entry || cat $yesterday_entry | less
        case -f --fortnight
            echo "fortnight"
        case -m --month
            echo "month"
        case -q --quarter
            echo "quarter"
        case \*
            mkdir -p $path
            touch -c $entry
            test -s $entry || echo "# $dt" >> $entry
            $EDITOR $entry
    end
end


