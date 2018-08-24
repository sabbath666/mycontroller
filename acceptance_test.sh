#!/bin/bash
if curl -s "http://142.93.73.34:9999/test"| grep "hello"
then
    # if the keyword is in the conent
    echo " the website is working fine"
else
    echo "ERROR"
    exit 1
fi