#!/bin/sh
sudo sed -i '/Install/d' /usr/share/libalpm/hooks/05-snap-pac-pre.hook
sudo sed -i '/Remove/d' /usr/share/libalpm/hooks/05-snap-pac-pre.hook
sudo sed -i '/Install/d' /usr/share/libalpm/hooks/zz-snap-pac-post.hook
sudo sed -i '/Remove/d' /usr/share/libalpm/hooks/zz-snap-pac-post.hook
