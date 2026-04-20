temp="$(cat /sys/class/thermal/thermal_zone1/temp)"

echo [" ${temp::-3}°C"]
echo $temp
if [[ ${temp::-3} -gt 80 ]]; then
  echo "#FE2F08"
elif [[ ${temp::-3} -gt 50]]; then
  echo "#D68A30"
fi
