#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Erbarak"
echo "Surname: Omirzak"
echo "Group: IT2-2306"
echo "Student ID: 37403"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -srm)"
echo ""
echo "Disk Usage:"
df -h /
echo ""
echo "Memory Usage:"
free -h
echo "=============================="
if [ -f "Omirzak_Erbarak_info.txt" ] || [ -f "../Omirzak_Erbarak_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
