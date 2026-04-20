brightness="$(brightnessctl i | grep -Eo "[0-9]+%" | sed 's/%//')"

symbol="bad"
if [[ brightness -eq 0 ]]; then
  symbol="󰃞" 
elif [[ brightness -lt 50 ]]; then
  symbol="󰃝"
elif [[ brightness -lt 100  ]]; then
  symbol="󰃟"
else
  symbol="󰃠"
fi 

echo ["$symbol" "$brightness"%]
