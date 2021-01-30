#!/bin/sh
# ~/.config/redshift/hooks/change.sh


case $1 in 
		period-changed)
				case $3 in 
						night)
                            feh --bg-fill ~/Pictures/backgrounds/Night_Wallpaper.jpg
								;;
						daytime)
                            feh --bg-fill ~/Pictures/backgrounds/Day_Wallpaper.jpg
								;;
				esac
				;;
esac
