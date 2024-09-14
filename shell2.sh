#!/bin/bash

####################################
# Author: Usama Thihami Kaki
# Date: 13/09/2024
#
# This script is for nodehealth check
#
#Version: v1
#####################################

set -x #debug mode
set -e #exit the script when there is an error
set -o Pipeline fail #It checks if there is any error in a command that includes pipe


df -h #To view disk information 

free -g # To view memory

nproc #Number of CPUs

ps -ef # To get the list all of the process running in a virtual machine

#ps -ef | grep "python" ---> here grep is used to find the specific process

date | echo "this" #here it will not print the date as data is system default command and it goes to stdin and pipe does not send the request to the next command if it goes to stdin and it works only in stdout

ps -ef | grep "python" | awk -F " " '{print $2 $8}' #here awk command is used to get the list of specific instead of getting all the process details and $<number> refers to columns which is needed.

#curl vs wget --> curl is used to view the stuffs without downloading it and wget downloads the file first

# sudo find/ -name <filename> --> to find all the files in a VM

set -u #This is useful for debugging and ensuring that your scripts don't accidentally operate with uninitialized variables.

./<filename>.sh | more #To view in file mode and for a better view.

aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId' #this comment is used to get only instances id and reservations, 
instances are part of json file and syntax needs to be return like as the json file shows
