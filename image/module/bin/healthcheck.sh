#!/bin/bash
curl -s http://127.0.0.1/admin/ | grep -q "Pi-hole Admin Console" || exit 1
