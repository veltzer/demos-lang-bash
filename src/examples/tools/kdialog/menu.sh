#!/bin/bash

# Define the options for the menu
options=("opt1" "Option 1" "opt2" "Option 2" "opt3" "Option 3" "optquit" "Quit")

# Show a KDialog menu and get the user's choice
choice=$(kdialog --menu "Choose an option:" "${options[@]}")

# Check the exit status
if [ $? -eq 0 ]; then
    case $choice in
        "opt1")
            kdialog --msgbox "You chose Option 1"
            # Add your code for Option 1 here
            ;;
        "opt2")
            kdialog --msgbox "You chose Option 2"
            # Add your code for Option 2 here
            ;;
        "opt3")
            kdialog --msgbox "You chose Option 3"
            # Add your code for Option 3 here
            ;;
        "optquit")
            kdialog --msgbox "Goodbye!"
            ;;
    esac
else
    kdialog --msgbox "Cancelled."
fi
