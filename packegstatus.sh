#!/bin/bash

figlet "Apache Check"

if
systemctl is-active --quiet apache2;

then
echo "Apache is Running"
else
echo "Apache is Not Running"
fi

figlet "dpkg"

if
dpkg -l | grep  apache2;
then
echo "Apache Package Installed"
else
echo "Apache Package Not Installed"
fi


figlet "Nginx Check"

if 
systemctl is-active --quiet nginx;

then
echo "Nginx is Running"
else
echo "Nginx is Not Running"
fi
