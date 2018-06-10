#!/bin/bash

var1=2
var2=3
var3=4
var4=5

var5=$(bc << EOF ### EOF is start point so bc should work until next EOF
scale=4
a1 = ($var1 * $var2)
b1 = ($var3 * $var4)
a1+b1

EOF
)

echo this math answer is $var5
