#!/bin/bash -u

# This is a solution to the fizz buzz riddle in bash

seq 100 | awk 'BEGIN{a[3]="fizz";a[5]="buzz"}{foo=1; for (k in a) if ($1 % k ==0) {foo=0;printf a[k]} if (foo) printf $1}{printf "\n"}'
