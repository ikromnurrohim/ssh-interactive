#!/bin/bash


echo $'\nWelcome to SSH Interactive\n--------------------------\ncode by ikromnurrohim\n\nPlease select one\n\n[1] SSH with username and password\n[2] SSH with username and identify file\n'
read -p $'Enter the choice number [1/2] :' selected_choice

if [[ $selected_choice == '1' || $selected_choice == '2' ]]; then

    echo $'\nPlease fill below'

    # SSH with username and password
    if [[ $selected_choice == '1' ]]; then

        # take value ip_address
        read -p 'ip address :' ip_address
        # validate ip address
        while ! [[ $ip_address =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; do
            echo "please giving correct ip address !!!"
            read -p 'ip address :' ip_address
        done

        # take value port
        read -p 'port :' port
        # validate port is number
        while ! [[ $port =~ ^[0-9]+$ ]]; do
            echo "please giving correct port !!!"
            read -p 'port :' port
        done

        # validate port length
        while [[ ${#port} > 5  ]]; do
            echo "please giving correct port !!!"
            read -p 'port :' port
        done

        # take value username
        read -p 'username :' username

        # take value password use -s to silent mode
        read -sp 'passowrd :' password

        echo "ssh to server $ip_address with username $username"
        echo 'running command...'
        sshpass -p $password ssh $username@$ip_address -p $port
    fi

    # SSH with username and file key
    if [[ $selected_choice == '2' ]]; then

        # take value ip_address
        read -p 'ip address :' ip_address
        # validate ip address using regex and dot to validate that have 3 dot
        while ! [[ $ip_address =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; do
            echo "please giving correct ip address !!!"
            read -p 'ip address :' ip_address
        done

        # take value port
        read -p 'port :' port
        # validate port is number
        while ! [[ $port =~ ^[0-9]+$ ]]; do
            echo "please giving correct port !!!"
            read -p 'port :' port
        done

        # validate port length is no more than 5
        while [[ ${#port} > 5  ]]; do
            echo "please giving correct port !!!"
            read -p 'port :' port
        done

        # take value username
        read -p 'username :' username
        read -p 'path identify file :' file_key

        echo "ssh to server $ip_address with username $username"
        echo 'running command...'
        sudo ssh -i $file_key $username@$ip_address -p $port
    fi

else
    echo $'Your not giving correct value\nClosed...'
fi
