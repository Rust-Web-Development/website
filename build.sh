#!/bin/bash

echo -e "Removing public folder..."

rm -rf public

echo -e "Building website with Zola..."

zola build

echo -e "Deploying it to public website folder..."

cp -a public/. /var/www/rustwebdevelopment.com/html/
