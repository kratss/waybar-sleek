#!/bin/env fish
cd ~/.config/waybar/modules
if $waybar_panel_visibility
	swaymsg bar mode invisible bar-0
	#sed -i 's/\"layer\":\ \"top\"/\"layer\":\ \"bottom\"/' ~/.config/waybar/config.jsonc
    #killall -SIGUSR2 "waybar -c /home/m/.config/waybar/config-panel.jsonc"
    set waybar_panel_visibility false
else
    swaymsg bar mode overlay bar-0
	#sed -i 's/\"layer\":\ \"bottom\"/\"layer\":\ \"top\"/' ~/.config/waybar/config.jsonc
    #killall -SIGUSR2 waybar -c /home/m/.config/waybar/config-panel.jsonc
    set waybar_panel_visibility true
end
