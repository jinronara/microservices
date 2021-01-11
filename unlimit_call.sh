#!/bin/bash

i=0

while : 
do 
  curl -s -o /dev/null http://192.168.202.10:8080/product-composite/$i 
  let "i+=1"
done
