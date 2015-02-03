#!/bin/sh
# list.tcl \
exec tclsh "$0" ${1+"$@"}
#Concat and lappend
set l1 [list Sun Mon Tues]
set l2 [list $l1 Wed "Thurday"]
set b 10
set l3 [list {a $b c} d];#»¨À¨ºÅ×èÖ¹ÒıÓÃÌæ»»
set l4 [concat $l1 $l2]

set l5 [list Merry Christ a and Happy a Chinese New Year]
set l6 [lsearch -all -inline $l5 C*]
set l7 [list 1 2 4 8 3 7 9]

set a [lsearch -exact $l5 Happy]
set b [lsearch $l5 a]
set c [lsearch -all $l5 a]

set d [lsearch -sorted $l7 4]

lappend l1 $l1 good;# his is very hard for me to understand....

puts $l1
puts "l2 is: $l2"
puts $l3
puts "l4 is: $l4"
puts $l1
puts $l5
puts $a
puts $b
puts "l6 is: $l6"
puts "the all number of the a in list l5: $c"
puts "the list d is: $d"

puts [lsearch -exact $l5 and]
puts [lindex $l5 4]
set len  [llength $l5]
puts [lrange $l5 0 [expr $len-2]]
puts [lsort $l5]
puts [lsort $l7]
puts [lsort -integer $l7]






