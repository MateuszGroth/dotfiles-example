#!/usr/bin/env sh

# the scripting-addition must be loaded manually if
# you are running yabai on macOS Big Sur. Uncomment
# the following line to have the injection performed
# when the config is executed during startup.
#
# for this to work you must configure sudo such that
# it will be able to run the command without password
#
# see this wiki page for information:
#  - https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)
#
sudo yabai --load-sa
yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"

# global settings
yabai -m config mouse_follows_focus          off
yabai -m config focus_follows_mouse          off
yabai -m config window_placement             second_child
yabai -m config window_topmost               off
yabai -m config window_shadow                off
yabai -m config window_opacity               off
yabai -m config window_opacity_duration      0.0
yabai -m config active_window_opacity        1.0
yabai -m config normal_window_opacity        0.90
yabai -m config window_border                off
yabai -m config window_border_width          6
yabai -m config active_window_border_color   0xff5E81AC
yabai -m config normal_window_border_color   0x00ffffff
yabai -m config insert_feedback_color        0x00ffffff
yabai -m config split_ratio                  0.50
yabai -m config auto_balance                 on
yabai -m config mouse_modifier               ctrl
yabai -m config mouse_action1                move
yabai -m config mouse_action2                resize
yabai -m config mouse_drop_action            stack

# general space settings
yabai -m config layout                       bsp
yabai -m config top_padding                  3
yabai -m config bottom_padding               3
yabai -m config left_padding                 3
yabai -m config right_padding                3
yabai -m config window_gap                   3


yabai -m rule --add app="^System Preferences$" manage=off
yabai -m rule --add app="^[Pp]hoto [Bb]ooth$" manage=off
yabai -m rule --add app="[A|a]lfred" manage=off
# yabai -m rule --add app="[Zz]oom" manage=off
echo "yabai configuration loaded.."