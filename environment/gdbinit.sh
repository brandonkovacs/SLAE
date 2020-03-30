#/bin/bash

# Simple script to set intel as the default disassembly flavor for gdb
echo "set disassembly-flavor intel" >> $HOME/.gdbinit
