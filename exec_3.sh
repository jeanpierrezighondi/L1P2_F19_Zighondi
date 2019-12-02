#!/bin/bash
Luck_Function() {
echo "Enter your lucky number"
read n

if [ $n -eq $1 ];
then
echo "You got 1st prize"
else
echo "Sorry! you can try again next time"
fi
}
Luck_Function 22
