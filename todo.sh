
#!/bin/bash

[[ $_ != $0 ]] && script_is_sourced=true || script_is_sourced=false
if [ $script_is_sourced ]; then
    SCRIPT_PATH=$BASH_SOURCE
else
    SCRIPT_PATH="$(readlink -f $0)"
fi
SCRIPT_DIR="$(dirname $SCRIPT_PATH)"
SCRIPT_NAME=$(basename $SCRIPT_PATH)


declare -a array=("TODO" "XXX" "??")
for KEYWORD in "${array[@]}"
do
	echo
	echo $KEYWORD:
	grep -rnwiHI ./ -e $KEYWORD
done
