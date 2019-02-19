#!/bin/bash

# Running as an outset login-once script.

# Removed some user specific sites that's the reason for the different user checks.

loggedInUser=$(python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')
File="/Users/"$loggedInUser"/Library/Preferences/.dock.txt"
logFile=""$HOME"/Library/Logs/docksettings.log"
emstudentgroup=$(defaults read "$HOME"/Library/Preferences/com.trusourcelabs.NoMAD.plist Groups | grep "Students EM" | xargs)
emstudentgroupmatch="Students EM"
msstudentgroup=$(defaults read "$HOME"/Library/Preferences/com.trusourcelabs.NoMAD.plist Groups | grep "Students MS" | xargs)
msstudentgroupmatch="Students MS"
omstudentgroup=$(defaults read "$HOME"/Library/Preferences/com.trusourcelabs.NoMAD.plist Groups | grep "Students OM" | xargs)
omstudentgroupmatch="Students OM"
pkstudentgroup=$(defaults read "$HOME"/Library/Preferences/com.trusourcelabs.NoMAD.plist Groups | grep "Students PK" | xargs)
pkstudentgroupmatch="Students PK"
spstudentgroup=$(defaults read "$HOME"/Library/Preferences/com.trusourcelabs.NoMAD.plist Groups | grep "Students SP" | xargs)
spstudentgroupmatch="Students SP"
tvstudentgroup=$(defaults read "$HOME"/Library/Preferences/com.trusourcelabs.NoMAD.plist Groups | grep "Students TV" | xargs)
tvstudentgroupmatch="Students TV"
genericstudentlogin="em msstudent om pk sp tv sb"

# Check for the file created after setting dock preferences. If it exists, quit script, as the prefences have already been set...

if [[ -e "$File" ]]; then

    /bin/echo "Users dock has already been set, exiting..." >> $logFile
    exit 0

elif [[ "$USER" == "em" ]]; then

    /bin/echo "Dock not set, user is EM. Setting EM dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" == "msstudent" ]]; then

    /bin/echo "Dock not set, user is msstudent. Setting msstudent dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Firefox.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" == "om" ]]; then

    /bin/echo "Dock not set, user is OM. Setting OM dock..." >> $logFile

    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" == "pk" ]]; then

    /bin/echo "Dock not set, user is PK. Setting PK dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" == "sb" ]]; then

    /bin/echo "Dock not set, user is SB. Setting SB dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/CASecureBrowser.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list

    touch "$File"


elif [[ "$USER" == "sp" ]]; then

    /bin/echo "Dock not set, user is SP. Setting SP dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" == "tv" ]]; then

    /bin/echo "Dock not set, user is TV. Setting TV dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" != ""$genericstudentlogin"" ]] && [[ "$emstudentgroup" == "$emstudentgroupmatch" ]]; then

    /bin/echo "Dock not set, user is in EM Student group. Setting EM Student group dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" != ""$genericstudentlogin"" ]] && [[ "$msstudentgroup" == "$msstudentgroupmatch" ]]; then

    /bin/echo "Dock not set, user is in MS Student group. Setting MS Student group dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Firefox.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart

    touch "$File"

elif [[ "$USER" != ""$genericstudentlogin"" ]] && [[ "$omstudentgroup" == "$omstudentgroupmatch" ]]; then

    /bin/echo "Dock not set, user is in OM Student group. Setting OM Student group dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" != ""$genericstudentlogin"" ]] && [[ "$pkstudentgroup" == "$pkstudentgroupmatch" ]]; then

    /bin/echo "Dock not set, user is in PK Student group. Setting PK Student group dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" != ""$genericstudentlogin"" ]] && [[ "$spstudentgroup" == "$spstudentgroupmatch" ]]; then

    /bin/echo "Dock not set, user is in SP Student group. Setting SP Student group dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

elif [[ "$USER" != ""$genericstudentlogin"" ]] && [[ "$tvstudentgroup" == "$tvstudentgroupmatch" ]]; then

    /bin/echo "Dock not set, user is in TV Student group. Setting TV Student group dock..." >> $logFile
    # Set to the path of dockutil
    dockutil="/usr/local/bin/dockutil"

    # Delete everything from the dock before replacing it with a specific selection of apps

    ${dockutil} --remove all --no-restart

    # Delay added so that the dock has time to initialize the removal

    sleep 1

    # Adding specific items back to dock, --add <path to item> | <url> [--label <label>] [ folder_options ] [ position_options ] [--no-restart] [ plist_location_specification ]

    ${dockutil} --add /Applications/Google\ Chrome.app --no-restart
    ${dockutil} --add /Applications/Keynote.app --no-restart
    ${dockutil} --add /Applications/Pages.app --no-restart
    ${dockutil} --add /Applications/Photos.app --no-restart
    ${dockutil} --add /Applications/Microsoft\ Word.app --no-restart
    ${dockutil} --add /Applications/Comic\ Life.app --no-restart
    ${dockutil} --add /Applications/Scratch\ 2.app --no-restart
    ${dockutil} --add /Applications/Managed\ Software\ Center.app --no-restart
    ${dockutil} --add '/Applications' --view list --no-restart
    ${dockutil} --add '~/Downloads' --view fan --no-restart
    ${dockutil} --add https://accounts.google.com/ --label "Google Sign In"

    touch "$File"

else

    /bin/echo "User does not need dock settings, exiting..." >> $logFile

fi
