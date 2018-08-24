#!/bin/bash
if curl -s "localhost:9999/test"| grep "hello"
then
    # if the keyword is in the conent
    echo " the website is working fine"
else
    exit 9
fi