#!/bin/sh

if nvr --serverlist | grep -q "$NVIMQT_LISTEN_ADDRESS"; then
    nvr --remote --servername "$NVIMQT_LISTEN_ADDRESS" "$@"
else
    exec nvim-qt -- --listen "$NVIMQT_LISTEN_ADDRESS" "$@"
fi
