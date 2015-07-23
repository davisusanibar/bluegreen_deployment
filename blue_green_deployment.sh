#!/bin/bash

if [ ! $1 ]; then
  echo "The environment only support (blue) or (green) deployment. Please specify either: [blue] or [green]."
  exit
fi

if [[ $1 != "green" && $1 != "blue" ]]; then
  echo "You didn't specify neither [green] nor [blue] !"
  exit
fi

echo "Deploying $1 server"
echo "set \$deploy $1;" > /etc/nginx/bluegreenconfig
sudo service nginx reload
