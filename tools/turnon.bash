#!/bin/bash
#  Copyright (c) 2019        Jeong Han Lee
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Saturday, February  9 13:25:11 CET 2019
# version : 0.2.0


options=":v:f"
STATUS="ON"



function usage
{
    {
	echo "";
	echo "Usage    : $0 [-v <bingo_number>] [-f ]" ;
	echo "";
	echo "               -v : Bingo Board Number "
	echo "               -f : OFF"
	echo "";
	echo " bash $0 -v 24"
	echo " bash $0 -v 24 -f"
	echo ""
	
    } 1>&2;
    exit 1; 
}



while getopts "${options}" opt; do
    case "${opt}" in
        v) NUMBER=${OPTARG}       ;;
	f) STATUS="OFF" ;;
   	:)
	    echo "Option -$OPTARG requires an argument." >&2
	    exit 1
	    ;;
	h)
	    usage
	    ;;
	\?)
	    echo "Invalid option: -$OPTARG" >&2
	    exit
	    ;;
    esac
done
shift $((OPTIND-1))


if [ -z "$NUMBER" ]; then
    usage;
fi

if [[ ${#NUMBER} -lt 2 ]] ; then
    NUMBER="00${NUMBER}"
    NUMBER="${NUMBER: -2}"
fi
 

if [ "$STATUS" == "ON" ]; then
    caput Bingo90:${NUMBER} 1
else
    caput Bingo90:${NUMBER} 0
fi


exit
