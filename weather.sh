#! /bin/bash
# This script download the latest weather data for the Athenry weather station from Met Eireann, 
# saving the weather data in a file with a timestamped name in the format YYYYmmdd_HHMMSS. 
# in the data/weather directory. 

date
echo "Downloading weather data"
wget -O data/weather/`date +”%Y%m%d_%H%M%S_athenry.json”` https://prodapi.metweb.ie/observations/athenry/today
echo "Weather data downloaded"
date