#!/usr/bin/expect -f
set no [lindex $argv 0]
cd /opt/neo-cli/node$no
spawn dotnet neo-cli.dll --rpc
expect "neo>"
interact