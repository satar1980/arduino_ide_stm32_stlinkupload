#!/bin/bash
if [ `uname -m` ==  "x86_64" ]; then
  st-flash write "$@" 0x8000000
else
  st-flash write "$@" 0x8000000
fi

"$(dirname $@)/wait_for_serial" /dev/$1
echo "File Name [$@]"
exit 0
