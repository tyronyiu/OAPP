#!/bin/bash
function kapp() {
[ -f ~/bin/keuze ] && echo "all dependencies exist, completing installation.." || $( echo "missing dependencies, installing now.." && wget -O ~/bin https://raw.githubusercontent.com/tyronyiu/OAPP/master/keuze)
# List 1 contains all the utility / system applications
list1=$(find /System/Applications -maxdepth 2 -type d -name "*.app")
# List 2 contains all by the user installed applications
list2="$(find /Applications -maxdepth 2 -type d -name "*.app")"
# Here we strip the app paths to cleanly display them to the user to choose from
stripped=$(echo "$list1" | sed -e 's/\.app$//' | cut -d/ -f4- | sed "/^$/d")
stripped2=$(echo "$list2" | sed -e 's/\.app$//' | cut -d/ -f3- | sed "/^$/d")
# Here we receive input from the user via "keuze"
choice=$(echo "$stripped \n $stripped2" | ~/bin/keuze -p "open")
# The if case only checks for whether the user has or hasn't chosen any app to
# open
if [[ -n $choice ]];then
    # This if statement differentiates between system apps and user installed
    # apps, it could be that a user has an app with the same name as a system
    # app.
    if [[ $list1 == *"$choice"* ]]; then
        app=$(echo "$list1" | grep "$choice") 
        open -a "$app"
    else
        app=$(echo "$list2" | grep "$choice")
        choice=$(echo $choice | sed -e 's/ //')
        if [[ -n $app ]];then
            open -a "$app"
        # For some reason, "System Preferences" doesn't work otherwise.
        elif [[ $choice = "SystemPreferences" ]];then    
            open -a "System Preferences"
        else
        # This statement is in case there is an app that is not in the Lists,
        # but should be, happens for some reason with "Sonos". 
            open -a "/Applications/$choice.app/Contents/MacOs/$choice"
        fi
    fi
fi
}
kapp
