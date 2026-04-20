POWER="/sys/class/power_supply"
BAT="BAT0"

status="$(cat $POWER/$BAT/status)"
level="$(cat $POWER/$BAT/capacity)"
color=""

case "$status" in
  "Discharging")
    if [ "$level" -eq 100];then 
      icon=""
      color="#BED37F"
    elif [ "$level" -gt 75 ]; then
      icon=""
      color="#BED37F"
    elif [ "$level" -gt 50 ]; then
      icon=""
      color="#BED37F"
    elif [ "$level" -gt 25 ]; then
      icon=""
      color="#D68A30"
    elif [ "$level" -lt 25 ]; then
      icon=""
      color="#FE2F08"
    fi
    ;;
  "Charging")
    icon="󰂄"
    color="#BED37F"
    ;;
  "Full")
    icon="󰂅"
    color="#BED37F"
    ;;
esac
echo ["$icon" "$level"%]
echo ["$level"%]
echo $color
