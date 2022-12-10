#!/bin/bash

service nginx start
spawn-fcgi -p 8080 ./a.out
tail -f /dev/null