volume_command="$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Eo '[0-9]+%' | head -n1 | sed 's/%//')"
status="$(pactl get-sink-mute @DEFAULT_SINK@)"

volume="$(echo $volume_command)"
muted="$(echo $status | grep -c "yes")"

symbol=""
if [[ $muted -eq 1 ]]; then
  symbol="󰖁"
else
  if [[ volume -eq 0 ]]; then
    symbol=""
  elif [[ volume -lt 50 ]]; then
    symbol=""
  else
    symbol=""
  fi
fi
echo ["$symbol" "$volume"%]
