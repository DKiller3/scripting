#!/bin/bash

figlet "Check Apache"

if
systemctl is-active --quiet apache2;

then
echo "Apache is Running"
else
echo "Apache is Not Running"
fi

figlet "Check Nginx"

if 
systemctl is-active --quiet nginx;

then
echo "Nginx is Running"
else
echo "Nginx is Not Running"

fi

figlet "dpkg"

if
dpkg -l | grep -i Apache2;
then
echo "Apache Package Installed"
else
echo "Apache Package Not Installed"
fi

echo""
echo""

if
 dpkg -l | grep -i Nginx;
then
    echo "Nginx Package Installed"
else
    echo "Nginx Package Not Installed"
fi
