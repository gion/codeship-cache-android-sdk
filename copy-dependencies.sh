#!/usr/bin/env bash

# if there is the android sdk installed at the expected path
if [ -d "$HOME/android-sdk-linux" ]; then
    # if there isn't already a cached copy
    if [ ! -d "$HOME/clone/node_modules/codeship-cache-android-sdk/cache/android-sdk-linux" ]; then
    	# create the path
        mkdir -p $HOME/clone/node_modules/codeship-cache-android-sdk/cache
        # copy the android sdk to cache it
        cp -R  $HOME/android-sdk-linux $HOME/clone/node_modules/codeship-cache-android-sdk/cache
    fi
fi