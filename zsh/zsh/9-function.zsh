#=============================================================================
# F U N C T I O N S 
#=============================================================================


calc (){ 
     awk "BEGIN{ print $* }" ;
}

escape (){
	echo -n "String to escape: "
	read escape_string_input
	printf '%q\n' "$escape_string_input"
}

 has(){
	local string="${1}"
	shift	
    local element=''
	for element in "$@"; do
		if [ "${string}" = "${element}" ]; then
			return 0
		fi
	done
	return 1
}

 begin_with(){
	local string="${1}"
	shift 
    local element=''
	for element in "$@"; do
		if [[ "${string}" =~ "^${element}" ]]; then
			return 0
		fi
	done
	return 1
}

zipedit(){
    echo "Usage: zipedit archive.zip file.txt"
    unzip "$1" "$2" -d /tmp 
    vim /tmp/$2 && zip -j --update "$1" "/tmp/$2" 
}

function activate () {
    env=${1:-env}
    dir=$(back $env/bin/activate) || return
    source $dir/$env/bin/activate
}

#}
