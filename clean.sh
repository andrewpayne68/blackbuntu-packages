#!/bin/bash

## --------------- ##
## CLEAN DIRECTORY ##
## --------------- ##

## Define Base Path
## ----------------
basepath=$(pwd)

## Remove `debs` directory
## -----------------------
if [ -d "$basepath/debs" ] 
then
    rm -rf "$basepath/debs"
fi
