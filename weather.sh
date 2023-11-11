#!/bin/bash
api_key=""
city=""
url="https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$api_key"
response=$(curl -s $url)
temperature=$(echo $response | jq -r '.main.temp')
temperature_in_celsius=$(echo "$temperature - 273.15" | bc)
temperature_in_celsius=$(printf "%.0f\n" $temperature_in_celsius)
echo "$temperature_in_celsius°C"
