#!/bin/bash

# Set USERNAME to your testing user.
TESTING_USER="sb"

/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" AutomaticCheckEnabled -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" AutomaticDownload -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" ConfigDataInstall -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" CriticalUpdateInstall -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.commerce.plist" AutoUpdateRestartRequired -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.commerce.plist" AutoUpdateRestartRequired -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.commerce.plist" AutoUpdate -bool YES

sleep 1

/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" AutomaticCheckEnabled -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" AutomaticDownload -bool NO
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" ConfigDataInstall -bool NO
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.SoftwareUpdate.plist" CriticalUpdateInstall -bool YES
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.commerce.plist" AutoUpdateRestartRequired -bool NO
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.commerce.plist" AutoUpdate -bool NO

## Disables Disable expose
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.dock" mcx-expose-disabled -boolean TRUE
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.dashboard" mcx-disabled -boolean TRUE

## Sets defaults to symbolichotkeys to disable control+arrow keys to swipe in full screen
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 79 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 80 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 81 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 82 '<dict><key>enabled</key><false/></dict>'

## Sets defaults to symbolichotkeys to disable mission control, show desktop, application windows and dashboard
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 32 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 33 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 34 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 35 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 36 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 37 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 62 '<dict><key>enabled</key><false/></dict>'
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.symbolichotkeys.plist" AppleSymbolicHotKeys -dict-add 63 '<dict><key>enabled</key><false/></dict>'

## Disable Updates to iTunes
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.iTunes.plist" disableCheckForUpdates -bool TRUE

## Disable look up gesture (disables for all users)
/usr/bin/defaults -currentHost write NSGlobalDomain             com.apple.trackpad.threeFingerTapGesture -int 0
/usr/bin/defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 0
/usr/bin/defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0

# Enable F Keys as default (disables for all users)
/usr/bin/defaults -currentHost write NSGlobalDomain             com.apple.keyboard.fnState -int 1

## Disable Notification Center (disables for all users)
/usr/bin/defaults -currentHost write NSGlobalDomain             com.apple.trackpad.twoFingerFromRightEdgeSwipeGesture -int 0
/usr/bin/defaults write com.apple.AppleMultitouchTrackpad                  TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0
/usr/bin/defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerFromRightEdgeSwipeGesture -int 0

## Disable Dictation
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.speech.recognition.AppleSpeechRecognition.prefs.plist" DictationIMMasterDictationEnabled -bool false

## Disable Siri
/usr/bin/defaults write "/Users/$TESTING_USER/Library/Preferences/com.apple.assistant.support" 'Assistant Enabled' -bool NO

chown $TESTING_USER "/Users/$TESTING_USER/Library/Preferences/"*
