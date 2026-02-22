#!/bin/bash

# Create the mpv config directory if it doesn't exist
mkdir -p ~/.config/mpv

# Write the configuration to mpv.conf
cat > ~/.config/mpv/mpv.conf << 'EOF'
vo=gpu-next
gpu-api=vulkan
hwdec=nvdec
EOF

echo "MPV configuration created successfully at ~/.config/mpv/mpv.conf"