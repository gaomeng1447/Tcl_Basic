#!/bin/sh
# string.tcl \
exec tclsh "$0" ${1+"$@"}

#### first #####
set a [string first ab defabc]
puts $a

set str1 "hello_kitty "
####index#####
set b [string index $str1 4]
set c [string index $str1 end-4]
puts $b
puts $c

####length#####
set d [string length $str1]
puts $d

####match#####
set e [string match {a[b-f]cdef} accdef]
puts $e

####range#####
set f [string range $str1 0 4]
puts $f

####repeat#####
set f [string repeat $str1 2]
puts $f

####replace#####
set f [string replace $str1 0 4 bad]
puts $f

#### tolower toupper #####
set f [string toupper $str1 0 4]
puts $f

#### trim #####
set f [string trim $str1]
puts $f



