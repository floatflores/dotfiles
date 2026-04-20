rom_command="$(df -h / | awk 'NR==2 {printf " %.1f%|%.1f GiB", $5, $4}')"
echo [$rom_command]
