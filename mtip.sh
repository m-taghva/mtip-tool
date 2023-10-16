#!/bin/bash

#variable and API
IPPUB=$(curl -s icanhazip.com)
IPPRV=$(hostname -I)
ROU=$(ip route | grep default)
ISPC=$(curl -s https://api.seeip.org/geoip)

# for bold font
BOLD="\e[1m"
RESET="\e[0m"
#add color
RED="31"
GREEN="32"
REDC="\e[31m"
GREENC="\e[32m"
BACKG="\e[104m"
BOLDRED="\e[1;${RED}m"
ITALIC="\e[3m"
ENDCOLOR="\e[0m"


echo""
echo -e "${BACKG}----------------MTIP-tool-----------------------${ENDCOLOR}"
echo""
echo -e "${ITALIC}your Public IP is${ENDCOLOR} : ${BOLDRED}$IPPUB${ENDCOLOR}"
echo""
echo -e "${ITALIC}your Private IP is${ENDCOLOR} : ${BOLDRED}$IPPRV${ENDCOLOR}"
echo""
echo -e "${ITALIC}your Default Route is${ENDCOLOR} : ${BOLDRED}$ROU${ENDCOLOR}"
echo""
echo -e "${ITALIC}your ISP and Country info${ENDCOLOR} ${BOLDRED}$ISPC${ENDCOLOR}"
echo""
echo -e "${BACKG}-----------------------------------------------${ENDCOLOR}"
echo""
