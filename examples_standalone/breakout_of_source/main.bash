#!/bin/bash

echo "in main"
source sourced_file.bash
ret=$?
echo "back in main $ret"
