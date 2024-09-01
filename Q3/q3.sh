#!/bin/bash

# -h: human readable form
# */: pattern to match only directory in current directory 
# du: $1: size; $2: directory name 
# 2>/dev/null: Redirects error messages to /dev/null to ignore any "Permission denied" or other irrelevant errors.

du -h */ 2>/dev/null | sort -h | awk '{print $2 " " $1}'