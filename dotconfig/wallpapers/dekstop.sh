#!/bin/bash

if [[ ! -d "$HOME/wallpapers" ]]; then
    echo "Wallpapers directory not found!"
        exit 1
        fi

        # Edit below to control the image transition
        export SWWW_TRANSITION_FPS=60
        export SWWW_TRANSITION_STEP=2

        # This controls (in seconds) when to switch to the next image
        INTERVAL=300

        previous_image=""
        while true; do
            image_files=("$HOME/wallpapers"/*)
                random_index=$((RANDOM % ${#image_files[@]}))
                    random_image="${image_files[random_index]}"

                        if [[ "$random_image" != "$previous_image" ]]; then
                                swww img "$random_image"
                                        previous_image="$random_image"
                                            fi
                                                
                                                    sleep $INTERVAL
                                                    done
