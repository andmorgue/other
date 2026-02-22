cat <<'EOF' > ~/.config/i3blocks/config
separator=true
separator_block_width=15
color=#ffffff

[cpu]
label=CPU:
command=sh -c 'if [ "$BLOCK_BUTTON" = 1 ]; then setsid kitty -e htop >/dev/null 2>&1 & fi; TEMP=$(sensors 2>/dev/null | awk "/Package id 0/ {print int(\$4)}"); USAGE=$(top -bn1 | awk "/Cpu\(s\)/ {print int(100-\$8)}"); echo "${TEMP:-?}°C [${USAGE}%]" | xargs'
interval=2

[gpu]
label=GPU:
command=sh -c 'if [ "$BLOCK_BUTTON" = 1 ]; then setsid kitty -e nvtop >/dev/null 2>&1 & fi; command -v nvidia-smi >/dev/null || { echo OFF; exit; }; nvidia-smi --query-gpu=temperature.gpu,utilization.gpu --format=csv,noheader,nounits 2>/dev/null | awk "{printf \"%d°C [%d%%]\\n\", \$1, \$2}" | xargs || echo OFF'
interval=2

[memory]
label=RAM:
command=sh -c 'if [ "$BLOCK_BUTTON" = 1 ]; then setsid kitty -e htop >/dev/null 2>&1 & fi; awk "/MemTotal/{t=\$2}/MemFree/{f=\$2}/Buffers/{b=\$2}/^Cached:/{c=\$2}/SReclaimable/{r=\$2}/Shmem/{s=\$2}END{u=t-f-b-c-r+s;printf \"%.1fG [%.0f%%]\\n\",u/1024/1024,(u/t)*100}" /proc/meminfo' | xargs
interval=2

[disk]
label=SSD:
command=sh -c 'if [ "$BLOCK_BUTTON" = 1 ]; then setsid kitty --hold -e df -h >/dev/null 2>&1 & fi; df -h --output=used,pcent / | tail -1 | awk "{print \$1 \" [\" \$2 \"]\"}" | xargs'
interval=60

[wireless]
label=NET:
command=sh -c 'if [ "$BLOCK_BUTTON" = 1 ]; then setsid kitty -e wavemon >/dev/null 2>&1 & fi; iface=wlxe84e069d188a; iw dev "$iface" link | awk "/SSID/ {ssid=\$2} /signal/ {sig=\$2} END { if (ssid==\"\" || sig==\"\") { print \"OFFLINE\"; exit } q=(sig+90)*100/45; if (q<0) q=0; if (q>100) q=100; printf \"%s [%d%%]\\n\", ssid, q }"'
interval=2

[volume]
label=VOL:
command=wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{if($3=="[MUTED]") print "MUTE"; else print int($2*100)"%"}' | xargs
interval=once
signal=10

[time]
command=sh -c 'if [ "$BLOCK_BUTTON" = 1 ]; then setsid kitty --hold -e cal -y >/dev/null 2>&1 & fi; date "+%Y-%m-%d %H:%M"'
interval=1
EOF