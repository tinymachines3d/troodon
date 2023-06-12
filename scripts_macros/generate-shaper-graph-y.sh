#!/bin/bash

NEWY=$(ls -Art /tmp/calibration_data_y_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/pi/printer_data/config/elements/input_shaping/input_shaper_results" ]
then
    mkdir /home/pi/printer_data/config/elements/input_shaping/input_shaper_results
    chown pi:pi /home/pi/printer_data/config/elements/input_shaping/input_shaper_results
fi

~/klipper/scripts/calibrate_shaper.py $NEWY -o /home/pi/printer_data/config/elements/input_shaping/input_shaper_results/shaper_calibrate_y_$DATE.png