#!/bin/sh
#by Lucas Dias

#The .kt is compiled and the .class byte code is generated
kotlinc $1

#This part changes the substring ".k" by "Kt", because of the format that the compiler generates 
f=$1
s=Kt
t=.kt
[ "${f%$t*}" != "$f" ] && f="${f%$t*}$s${f#*$t}"

#And now, the .class generated before is executed
kotlin $(echo "$f" | sed 's/.*/\u&/')

#end
