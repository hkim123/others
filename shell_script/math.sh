#!/bin/bash

var1=100
var2=50
var3=25
var4=$[var1*(var2/var3)]
var5=$(echo "scale=5; 3.44/5" | bc) # bc is linux inbeded calculater tool, you can type bc form cli

echo The result is $var4
echo the BC calculation answer is $var5
