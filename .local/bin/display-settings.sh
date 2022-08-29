#!/bin/bash 

# This script is for managing displays
# A work in progress

# ASCII art
echo ""
toilet -f pagga --filter rainbow "Taan's"
toilet -f pagga --filter rainbow "Display"
toilet -f pagga --filter rainbow "Settings"
echo ""

echo "What do you want to do?"
echo "1- extend the display"
echo "2- turn off a display (dangerous if only 1 display is connected)"
echo ""

declare -i command_num
read -p "Enter the thing you want to do: " command_num
echo ""

case $command_num in
  1)
    # checking if hdmi is connected
    echo "Checking if the HDMI output is connected..."

    # 2nd word will contain either connected or disconnected
    check_hdmi=$(xrandr | grep "HDMI" | awk '{print $2}')

    if [[ $check_hdmi == "disconnected" ]];
    then
      echo "HDMI output is not connected..."
      exit 0
    else
      echo "HDMI connected..."
      echo ""
    fi

    # defaults or you have a particular use case
    read -p "Do you want to go with the home defaults?(y/n): " default_ans

    default_ans=${default_ans,,}

    if [[ $default_ans =~ ^(yes|y)$ ]];
    then
      xrandr --output eDP --mode 2560x1600 --rate 120.00 --output HDMI-A-0 --mode 1920x1080 --scale 1x1 --rate 120.00 --scale 1x1 --right-of eDP
      exit 0

    elif [[ $default_ans =~ ^(no|n)$ ]];
    then
      echo "An overview of the outputs:"
      echo ""
      xrandr
      echo ""
      
      read -p "Specify the mode of the external display on the HDMI output: " extended_mode

      echo ""
      
      read -p "Specify the refresh rate of the external display on the HDMI output: " extended_rate
      
      xrandr --output eDP --mode 2560x1600 --rate 120.00 --output HDMI-A-0 --mode "$extended_mode" --rate "$extended_rate" --right-of eDP

    else
      echo "Wrong input..."
      exit 0
    fi
    ;;

  2)
    echo "The available displays: "
    
    xrandr --listmonitors
    
    read -p "What display you want to turn off?: " target_display
    
    xrandr --output "$target_display" --off
    ;;
  *)
    echo "Bye"
    exit 0
esac
