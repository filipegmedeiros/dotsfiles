# This requires spinner to be available (you can adjust the path).
# That can be downloaded from here: http://github.com/swelljoe/spinner
. ./dep2.sh



SPINNER_COLORCYCLE=0
SPINNER_COLORNUM=5
SPINNER_SYMBOLS="WIDE_UNI_GREYSCALE2"
#SPINNER_SYMBOLS="WIDE_ASCII_PROG"
SPINNER_CLEAR=0 # Don't blank the line, so our check/x can simply overwrite it.

# Some colors and formatting constants
# used in run_ok function.
if type 'tput' > /dev/null; then
        RED=$(tput setaf 1)
        GREEN=$(tput setaf 2)
        YELLOW=$(tput setaf 3)
        REDBG=$(tput setab 1)
        GREENBG=$(tput setab 2)
        YELLOWBG=$(tput setab 3)
        NORMAL=$(tput sgr0)
else
        echo "tput not found, colorized output disabled."
        RED=''
        GREEN=''
        YELLOW=''
        REDBG=''
        GREENBG=''
        YELLOWBG=''
        NORMAL=''
fi

RUN_LOG="saida.log"

# Check for unicode support in the shell
# This is a weird function, but seems to work. Checks to see if a unicode char can be
# written to a file and can be read back.
shell_has_unicode () {
        # Write a unicode character to a file...read it back and see if it's handled right.
        env printf "\u2714"> unitest.txt

        read unitest < unitest.txt
       	rm unitest.txt
        if [ ${#unitest} -le 3 ]; then
                return 0
        else
                return 1
        fi
}

# Perform an action, log it, and print a colorful checkmark or X if failed
# Returns 0 if successful, $? if failed.
run_ok () {
	# Shell is really clumsy with passing strings around.
	# This passes the unexpanded $1 and $2, so subsequent users get the
	# whole thing.
        local cmd="\${1}"
        local msg="${2}"
        local columns=$(tput cols)
        if [ $columns -ge 80 ]; then
                columns=80
        fi
        COL=$(( ${columns}-${#msg}+${#GREENBG}+${#NORMAL} ))

        printf "%s%${COL}s" "$2"
        # Make sure there some unicode action in the shell; there's no
        # way to check the terminal in a POSIX-compliant way, but terms
        # are mostly ahead of shells.
        # Unicode checkmark and x mark for run_ok function
        CHECK='\u2714'
        BALLOT_X='\u2718'
	(spinner &)
        eval ${cmd} >> ${RUN_LOG}
        local res=$?
	touch stopspinning
	while [ -f stopspinning ]; do
		sleep .2 # It's possible to have a race for stdout and spinner clobbering the next bit
	done
	# Log what we were supposed to be running
	printf "$msg: " >> ${RUN_LOG}
        if shell_has_unicode; then
                if [ $res -eq 0 ]; then
			printf "Success.\n" >> ${RUN_LOG}
                        env printf "${GREENBG}[  ${CHECK}  ]${NORMAL}\n"
                        return 0
                else
			printf "Failed with error: ${res}\n" >> ${RUN_LOG}
                        env printf "${REDBG}[  ${BALLOT_X}  ]${NORMAL}\n"
                        return $?
                fi
        else
                if [ $res -eq 0 ]; then
			printf "Success.\n" >> ${RUN_LOG}
                        env printf "${GREENBG}[ OK! ]${NORMAL}\n"
                        return 0
                else
			printf "Failed with error: ${res}\n" >> ${RUN_LOG}
                        env printf "${REDBG}[ERROR]${NORMAL}\n"
                        return $?
                fi
        fi
}

