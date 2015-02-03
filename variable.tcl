#!/bin/sh
# variable.tcl \
exec tclsh "$0" ${1+"$@"}
proc t {} {
	variable m 100
	puts "In procedure t: $m"
}


t;
puts "Global variable m = $m"


#
#
