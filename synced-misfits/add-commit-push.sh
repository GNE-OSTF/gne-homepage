#!/bin/bash
npm run minify
git add .
git commit -am "$1"
git push origin master