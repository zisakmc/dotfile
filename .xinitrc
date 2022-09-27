xrandr --setprovideroutputsource
modesetting NVIDIA-0 &
xrandr --auto &

#i3 startup
#exec i3
#exec_always feh --bg-scale home/blue/wallpapar/cyberjpg.jpg
#dwm start up
#wallpaper
nitrogen --restore &

#compositer
picom -f &
#loop for dwn when press alt+shift+q
#while true; do
#    dwm >/dev/null 2>&1
#done &

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &

sudo mount -t ntfs-3g /dev/sda2 ~/drive &
#start dwm-bar
exec /home/$USER/dwm-bar/dwm_bar.sh &

exec dwm

