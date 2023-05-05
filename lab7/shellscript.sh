#!/bin/bash

while true;
do
    echo "system report"
    echo "a. Show free disk space"
    echo "b. Show uptime"
    echo "c. show log in"
    echo "q. Exit"

    # way to select the options from menu
    read -p "Enter your choice [ a,b,c,q] " choice

    # create a case statement to select the options from menu
    case $choice in
        a)
            echo "Show free disk space";
            df ;
	        echo
            ;;
        b)
            echo "Show system path";
            uptime;
	        echo
            ;;
        c)
            echo "log in";
            who;
	        echo
            ;;
        
        q)
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

