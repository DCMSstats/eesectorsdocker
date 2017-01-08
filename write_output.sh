#!/bin/bash -   
#title          :write_output.sh
#description    :Produce reproducible statistical report using docker
#author         :Matthew Upson
#date           :20161130
#version        :0.1.0  
#usage          :./write_output.sh
#notes          :       
#bash_version   :4.3.46(1)-release
#============================================================================

# The following will run the current RAP container from docker and reproduce the latest RAP-demo-md@master into index.html, saving this into a output/index.html

sudo docker run -i --rm -v ${PWD}/output:/mnt/output ivyleavedtoadflax/rap-demo:latest /bin/bash << COMMANDS
cd RAP-demo-md
git pull origin master
Rscript -e 'rmarkdown::render(input="index.Rmd",output_format="html_document",output_file="index.html")'
cp index.html /mnt/output/index.html
echo Changing owner from \$(id -u):\$(id -g) to $(id -u):$(id -u)
chown -R $(id -u):$(id -u) /mnt/output
COMMANDS
