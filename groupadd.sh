#first entry is a name
hasgroup=0
for i in $(cat groups.txt); do
    #assume that name is added
    addedgroup=0
    #check if $i is on the first entry or the entry after a :
    if [[ $hasgroup == 0 ]]; then
        #records the group name between iterations
        groupname=$i
        #makes the group
        groupadd "$groupname"
        echo "added group $groupname"
        #sets the flag to not accept the next request as a groupname until the next colon
        hasgroup=true
        #checks if this iteration added a group to skip the useradd
        addedgroup=true
    fi
    #checks if this iteration added a group
    if [[ $addedgroup == 0 ]]; then
        #checks if this line is a colon
        if [[ $i = ":" ]]; then
            #sets the next iteration to be a group name
            hasgroup=0
        else
            #adds the user
            usermod -a -G "$groupname" "$i"
            echo "added user $i to group $groupname"
        fi
    fi
done

#format, no gaps, goes forever, as many

#group name
#name 
#:
#group name
#name