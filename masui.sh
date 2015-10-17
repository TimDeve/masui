#!/bin/bash
#description: Use mas to update all of your app at the same time (hopefully) 
if [[ $(mas outdated) == "" ]]
then
    echo "You are up to date !"
else
    echo "You have update available:"
    IFS=$'\n' appName=( $(mas outdated | colrm 1 10))
    appID=( $(mas outdated | colrm 10))

    for i in "${appName[@]}"
    do
        let counter++
        echo "$counter) $i"
    done
    
    echo ""
    echo "Enter the n° of the apps you want updated (ex: '1' or '1 4 3')"
    echo "Enter 'a' for all and 'c' to cancel __________________________"
    echo "___________________________________/"
    
    success=false
    
    until $success
    do
        read appChoice

        if echo $appChoice | grep -q "c"; then
            echo "You chose to cancel. Exiting now."
            success=true

        elif echo $appChoice | grep -q "a"; then
            echo "Updating all the outdated apps, give us a moment..."

            for i in "${appID[@]}"
            do
                mas install $i
            done
            success=true

        elif echo $appChoice | grep -v [0-9]; then
            echo ""
            echo "That's not one the choices. Wanna try again?"
            echo "--------------------------------------------"

        else
            IFS=$' ' choiceArray=($appChoice) 
            for i in "${choiceArray[@]}";
            do
                n=$(( $i - 1 ))
                IDtoInstall=${appID[$n]}
                mas install $IDtoInstall
                success=true
                echo ""
            done

        fi
    done
    echo "Bye!"
fi

