#!/bin/bash
# Usage: make_home [MASK] USER
#
# 1. create home directory for user USER if not exists
# 2. make USER and its principal group owner 
#    of this new directory
# 3. copy hidden files from /etc/skel/ to this 
#    new directory

# check number of arguments
if [ $# -eq 0 ] || [ $# -gt 2 ]
then
	echo "Error - missing or too much argument(s)" 1>&2
	echo "Usage: make_home.sh [MASK] user"  1>&2
	exit 1
fi

# handle MASK if 2 arguments and shift args
# NB: exit if MASK is not correct
if [ $# -eq 2 ]
then
    echo "change mask to $1"
    umask "$1" || exit 2
    shift
fi

# retrieve USER from arg #1
USER="$1"

# check if user exists
if ! USER_CONFIG=$(grep "^${USER}:" /etc/passwd)
then
	echo "Error - User unknown: $USER" 1>&2
	exit 3
fi

HOME_DIRECTORY=$(echo "$USER_CONFIG" | cut -d ':' -f6)
GID=$(echo "$USER_CONFIG" | cut -d ':' -f4)

if [ -e "$HOME_DIRECTORY" ]
then
	echo "Error - Home directory already exists: $HOME_DIRECTORY" 1>&2
	exit 4
fi

mkdir "$HOME_DIRECTORY" || exit 5

# copy skeleton files from /etc/skel
# NB: files begining by a "." !
cp /etc/skel/.[^.]* "$HOME_DIRECTORY"

## change both owner: user and group 
chown -R "$USER:$GID" "$HOME_DIRECTORY"
