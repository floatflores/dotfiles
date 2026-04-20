read cpu user nice system idle iowait irq softirq steal guest guest_nice < /proc/stat

sleep 0.5

read cpu2 user2 nice2 system2 idle2 iowait2 irq2 softirq2 steal2 guest2 guest_nice2 < /proc/stat

total1=$((user + nice + system + idle + iowait + irq + softirq + steal))
total2=$((user2 + nice2 + system2 + idle2 + iowait2 + irq2 + softirq2 + steal2))

total_diff=$((total2 - total1))
idle_diff=$((idle2 - idle))

cpu_usage=$((100 * (total_diff - idle_diff) / total_diff))

echo $(printf "[  %02d%%]" $cpu_usage)
echo $cpu_usage
if [[ $cpu_usage -gt 80 ]]; then
  echo "#FE2F08"
elif [[ $cpu_usage -gt 50 ]]; then
  echo "#D68A30"
elif [[ $cpu_usage -gt 20 ]]; then
  echo "#BED37F"
fi
