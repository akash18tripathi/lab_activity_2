#!/bin/bash

cat /etc/shells | awk '$1 ~ /usr/' | awk -F "/" '{print $NF}'
