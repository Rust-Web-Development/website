#!/bin/bash

cd ./themes/hyde && git add . && git commit -m "Update theme"

cd ../../

git add .

git commit -m "Auto generated message"

git push origin main

