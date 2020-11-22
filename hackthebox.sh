#!/bin/bash
# Script to download automatically
# challenges to our local machine

# Variables
CHALLENGE=$1
HACKTHEBOX_SESSION="HACKTHEBOX--SESSION-COOKIE"

# Auto trasnfer, unzip and move to right folder
wget -q --header="Cookie: hackthebox_session=$HACKTHEBOX_SESSION" https://www.hackthebox.eu/home/challenges/download/$CHALLENGE
mv $CHALLENGE $CHALLENGE.zip
unzip -q -P hackthebox $CHALLENGE.zip
rm $CHALLENGE.zip
