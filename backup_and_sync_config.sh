#!/bin/bash

mkdir -p $HOME/Library/Application\ Support/Google/Drive/user_default/

FILE="$HOME/Library/Application Support/Google/Drive/user_default/user_setup.config"

/bin/cat << EOM > "$FILE"

[Computers]
desktop_enabled: True
documents_enabled: True
pictures_enabled: False
high_quality_enabled: False
always_show_in_photos: False
usb_sync_enabled: True
ignore_extensions: mnt, cups, ssh, profile, android, config, lock, mov, dmg, iso, vdi, ova, pkg, FBCIndex, FBCLockFolder, Apple*, Trash*, VolumeIcon, icns, HSicon, Temporary, Metadata, filler, tmp, log, DS_Store, bash_history, bash_sessions, account, SymAVQSFile, dropbox, FileSync, vagrant.d, gem, Spotlight, CFUserTextEncoding
# Delete mode can be: ALWAYS_SYNC_DELETES, ASK, NEVER_SYNC_DELETES
delete_mode: NEVER_SYNC_DELETES

[MyDrive]
my_drive_enabled: False

[Settings]
autolaunch: True
show_overlays: False

EOM
