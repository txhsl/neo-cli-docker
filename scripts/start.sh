#!/bin/bash

screen -dmS node1 expect /opt/neo-cli/scripts/run.sh 1
screen -dmS node2 expect /opt/neo-cli/scripts/run.sh 2
screen -dmS node3 expect /opt/neo-cli/scripts/run.sh 3
screen -dmS node4 expect /opt/neo-cli/scripts/run.sh 4

sleep infinity