#!/bin/bash
rm -r website/*
##
mkdir website/img
mkdir website/fonts
##
cp ressources/fonts/* website/fonts/
cp ressources/svg/* website/img/
cp ressources/img/* website/img/
cp ressources/favicon.ico website/