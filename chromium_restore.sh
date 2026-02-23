#!/bin/bash

BACKUP_PATH="/run/media/and/c87424e0-0ab2-4cc7-b489-fd22e499ca64/backup/chromium"
USER_HOME="/home/and"

if [ ! -f "$BACKUP_PATH/chromium_profile.tar.gz" ]; then
    exit 1
fi

tar -xvpzf "$BACKUP_PATH/chromium_profile.tar.gz" -C "$USER_HOME/"
tar -xvpzf "$BACKUP_PATH/kde_wallet.tar.gz" -C "$USER_HOME/"