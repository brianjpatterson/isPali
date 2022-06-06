#!/bin/bash

declare subject=$1

isPali() {

	local subject=$1

	local first=${subject:0:1}
	local last=${subject: -1:1}

	if [ $first != $last ]; then
		echo "false"
		return 0
	fi

	subject=${subject:1:-1}

	if [ ${#subject} -lt 2 ]; then

		echo "true"
		return 0
	fi

	isPali "$subject"
}

isPali "$subject"

#cryptothick$ bash isPali.sh foof    
#true                                                 
#cryptothick$ bash isPali.sh foo     
#false

