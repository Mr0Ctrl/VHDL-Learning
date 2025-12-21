#!/bin/bash
file_path=${1%/*}
file_name=${1##*/}

ghdl -a $1
ghdl -e ${file_name%.*}
ghdl -r ${file_name%.*} --vcd=${file_path}/output.vcd
gtkwave ${file_path}/output.vcd