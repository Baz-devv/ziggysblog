#!/bin/bash

set -e

hugo

cd public

git add .

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	  msg="$*"
fi
git commit -m "$msg"

git push origin main

cd ..
	  

