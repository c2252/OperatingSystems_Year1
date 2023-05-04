#!/bin/bash
history=$(cat ~/.bash_history)

while true;
do
    echo "welcome to menu" echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"

    # way to select the options from menu
    read -p "Enter your choice [ 1 - 6 ] " choice

    # create a case statement to select the options from menu
    case $choice in
        1)
            echo "List files";
            ls;
	    echo
            ;;
        2)
            echo "Show free disk space";
            df -h;
	    echo
            ;;
        3)
            echo "Show system path";
            pwd;
	    echo
            ;;
        4)
            echo "Display command history";
            echo $history;
	    echo
            ;;
        5)
            echo "Backup files";
	    read backup;
	    mkdir backupFolder;
	    cd backupFolder; 
	    cp -r $backup backupFolder;
	    echo "your files is backed up";
	    echo
            ;;
        6)
            echo "Exit";
            exit 1;
	    echo
            ;;
        *)
            echo "Invalid choice";
	    echo
            ;;
    esac
done
