
signal_strength=$(nmcli -t -f IN-USE,SIGNAL dev wifi | grep '^*' | cut -d: -f2)

if [[ -n "$signal_strength" ]]; then
    if [ "$signal_strength" -ge 70 ]; then
        echo ["󰖩 $signal_strength"%]
        echo [$signal_strength]
        echo "#BED37F"
    elif [ "$signal_strength" -ge 40 ]; then
        echo ["󰖩 $signal_strength"%]
        echo [$signal_strength]
        echo "#BED37F"
    else
        echo ["󰖩 $signal_strength"%]
        echo [$signal_strength]
        echo "#BED37F"
    fi
else
    echo ["󱚼"]
    echo "󱚼"
    echo "#FE2F08"
fi

