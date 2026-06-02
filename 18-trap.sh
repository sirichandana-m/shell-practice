#!/bin/bash

set -e #ERR

trap 'echo "There is error in the $LINENO, command: $BASH_COMMAND" ' $ ERR

echo " Hello world"
echo "I'm learning shell script"
echoo " error here"
echo " no error here"