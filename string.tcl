#!/bin/sh
# string.tcl \
exec tclsh "$0" ${1+"$@"}

#### first #####
set a [string first ab defabc]
puts "a is $a"

set str1 "hello_kitty "
#### index #####
set b [string index $str1 4]
set c [string index $str1 end-4]
puts $b
puts $c

#### length #####
set d [string length $str1]
puts $d

#### match #####
set e [string match {a[d-f]cdef} aecdef]
puts "here, e is: $e"

#### range #####
set f [string range $str1 0 4]
puts "f is: $f"

#### repeat #####
set f [string repeat $str1 2]
puts $f

#### replace #####
set f [string replace $str1 0 4 bad]
puts $f

#### tolower toupper #####
set f [string toupper $str1 0 4]
puts $f

#### trim #####
set f [string trim $str1]
puts $f

#### split #####
set str1 hello_kitty_I_love_you
set f [split $str1 "_"]
puts "split str1: $f"
puts [string index $f 0]
puts [string index $f 6]

#### join #####
set f [join $f _]
puts $f




