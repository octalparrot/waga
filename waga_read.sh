#!/bin/bash

#dd if='/dev/ttyUSB0' count=5 status=none | sort | tail -n 2 | tail -n 1
#dd if='/dev/ttyUSB0' count=5 status=none | sort | tail -n 2 | tail -n 1 | awk '{print $2}' | sed s/...$//

#Nowa waga
dd if='/dev/ttyUSB0' count=5 status=none | grep B0 | head -n 1 | tail -n1 | sed -e 's/B0//g' | awk '{print $1}'
