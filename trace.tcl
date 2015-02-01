#!/bin/sh
# trace.tcl \
exec tclsh "$0" ${1+"$@"}

trace variable color w pvar
trace variable a(length) w pvar
proc pvar { name element op } {
	if { $element != ""} {
		set name ${name}($element)
	}
	upvar $name x
	puts "Variable $name set to $x"
}

set color green
puts [trace vinfo color]
puts [trace vdelete color w pvar]
puts good_morning_everyone

proc hello { args } {
	set a 2
	#trace variable b w {puts $a list}
	set b $args
	return [expr $b + 10]
}
puts hello
puts [hello 11]

trace variable size w forceInt
proc forceInt {name element op} {
	upvar $name x
	if ![regexp {^[0-9]*$} $x] {
		error "value must b a postive integer"
	}
}
rename puts print
print "genius!"












