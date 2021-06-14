#!/bin/bash

cd ./themes/hyde && git add . && git commit -m "Update theme"

cd ../../

git add .

git commit -m "Latest blog changes"

git push origin main

