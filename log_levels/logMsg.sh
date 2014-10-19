#!/bin/bash
LOG_LEVEL="4"
function logMsg {
	message_level=$1
	message_string=$2
	if [ $message_level -le $LOG_LEVEL ]; then
		case $message_level in
			0) message_level_text="Error" ;;
			1) message_level_text="Warning" ;;
			2) message_level_text="Info" ;;
			3) message_level_text="Debug" ;;
			4) message_level_text="Other" ;;
		esac
		echo "${message_level_text}: $message_string"
	fi
}


logMsg 1 asdfasdf
