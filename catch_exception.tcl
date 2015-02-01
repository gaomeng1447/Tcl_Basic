#!/bin/sh
# catch_exception.tcl \
exec tclsh "$0" ${1+"$@"}

#catch command ?varName?
#error message ?info? ?code?
#return   -code   code  ?-errorinfo  info?  ?-errorcode errorCode?  ?string?    

set x -9

if { ($x < 0) || ($x > 100) } {
	catch {error "x is out of range: $x"} msg
	
}

puts $msg
global errorInfo errorCode
#error "x is out of range: $x"
unset x
catch {if {$x < 3} {
	puts "x is less than 3!"
	}
} msg

puts $msg










