#!/bin/bash
uptime | awk '{print $3}' | sed s/.$//

