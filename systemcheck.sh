#!/bin/bash

figlet "Check Disk"
echo""
echo""
df -h
echo""
echo""
figlet "Check RAM"
echo""
echo""
free -h
echo""
echo""
figlet "Check CPU"
echo""
echo""
nproc
echo""
