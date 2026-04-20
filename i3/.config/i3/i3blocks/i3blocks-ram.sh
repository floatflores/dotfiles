ram_command="$(free | awk 'NR==2{printf "%.1f GiB/%.1f GiB\n", $3/1024/1024, $2/1024/1024}')"

echo ["" "$ram_command"]
