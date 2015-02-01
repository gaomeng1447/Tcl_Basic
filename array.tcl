#!/bin/sh
# array.tcl \
exec tclsh "$0" ${1+"$@"}
# array in tcl looks like the dictionary in python
array set arrayname [list a 1 b 2]
array set an {first 1 second 2}
set ta(bea) angelaby
set ta(ugl) Chenhe

puts $ta(bea)
puts \n

#### array key ####
puts $an(first)
puts $arrayname(a)

#### array get ####
puts [array get an]
puts [array get ta]

#### size ####
puts [array size an]

#### foreach ####
foreach i [array names an] {
	puts "an($i) = $an($i)"
}





