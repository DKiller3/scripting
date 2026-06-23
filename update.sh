#!/bin/bash

if [ "$EUID" -eq 0 ]
then
    echo "Stated"
    echo "  "
    echo "  "
    echo "system updating"
    echo "  "
    echo "  "
    apt update -y
    echo "  "
    echo "  "
    echo "apache2 installing"
    echo "  "
    echo "  "
    apt install apache2 -y
    echo "  "
    echo "  "
    echo "Enable apache2"
    echo "  "
    echo "  "
    systemctl enable apache2
    echo "  "
    echo "  "
    echo "Start apache2"
    echo "  "
    echo "  "
    systemctl start apache2
    echo "  "
    echo "  "
    echo "Apache2 Status"
    systemctl status apache2

else
    figlet "Add  Sudo"

    echo "Kindly add sudo"
fi
