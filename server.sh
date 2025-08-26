#!/bin/bash

#A simple script to update the odoo server from the main branch and restart the service


USER="$1"
HOST="$2"
PORT=$3

COMMAND="cd $4 && git pull origin main && sudo systemctl restart $5 && git status"

ssh -p $PORT $USER@$HOST "$COMMAND"
