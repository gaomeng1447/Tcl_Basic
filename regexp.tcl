#!/bin/sh
# regexp.tcl \
exec tclsh "$0" ${1+"$@"}
#the following content is only related with regexp:@
#10/16 num	^((0x)?[0-9a-fA-F]+|[0-9]+)$

set str1 abcdef
set str2 0x132fa
set str3 0xabce

set a [regexp {^((0x)?[0-9a-fA-F]+|[0-9]+)$} $str2]
puts "tha a is : $a"
 if {$a} {
	puts $str2
 }
 
 
 
 
 
 
 
