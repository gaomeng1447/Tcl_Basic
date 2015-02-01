#!/bin/sh
# list.tcl \
exec tclsh "$0" ${1+"$@"}
#Concat and lappend
set l1 [list Sun Mon Tues]
set l2 [list $l1 Wed "Thurday"]
set b 10
set l3 [list {a $b c} d];#»¨À¨ºÅ×èÖ¹ÒıÓÃÌæ»»
set l4 [concat $l1 $l2]
lappend l1 $l1 good;# his is very hard for me to understand....

puts $l1
puts $l2
puts $l3
puts $l4
puts $l1








