#!/bin/bash

echo "OS version:"
uname -a

# list of user with preinstall shell bash
echo -e "\nUsers with bash:"
getent passwd | awk -F: '$NF { print $1 }'

echo -e "\nOpen ports:"
ss -tuln
