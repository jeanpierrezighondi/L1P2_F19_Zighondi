#!/bin/bash
echo "Please enter a sentence that includes the letter i"
read foo
var=$(echo $foo | tr "i" "a")
var2=$(echo $var | tr "{a-z}" "{A-Z}")
echo $var2
