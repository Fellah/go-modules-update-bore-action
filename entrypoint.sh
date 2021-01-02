#!/bin/sh -l

echo $(ls /github/home)
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
