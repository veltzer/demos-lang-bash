\#\!/bin/bash -eu

# Define the options for the menu
options=("Option 1" "Option 2" "Option 3" "Quit")

# Show a Zenity list dialog to get user input
choice=$(zenity --list --title="Selection Menu" --column="Options" "${options[@]}" --height=200)

# Check the exit status
if [ $? -eq 0 ]; then
    case $choice in
        "Option 1")
            zenity --info --text="You chose Option 1"
            # Add your code for Option 1 here
            ;;
        "Option 2")
            zenity --info --text="You chose Option 2"
            # Add your code for Option 2 here
            ;;
        "Option 3")
            zenity --info --text="You chose Option 3"
            # Add your code for Option 3 here
            ;;
        "Quit")
            zenity --info --text="Goodbye!"
            ;;
    esac
else
    zenity --info --text="Cancelled."
fi
