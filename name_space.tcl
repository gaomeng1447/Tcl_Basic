#!/bin/sh
# name_space.tcl \
exec tclsh "$0" ${1+"$@"}

namespace eval Counter {
	namespace export *
	variable m_count 0;
	
	proc Reset { } {
		variable m_count
		set m_count 0
	};
	
	proc Increase { m } {
		variable m_count
		incr m_count $m
	}
	
}

namespace eval Counter {
	namespace export *
	proc GetCounter { } {
		variable m_count;
		return $m_count
	}
	
	namespace eval Operator { } {
		proc Print { } {
			variable ::Counter::m_count
			puts "The counter is $m_count"
		}
	}
	proc ArrayInNS { } {
		variable m_days
		array set m_days {1 Monday 2 Tuesday 3 Wednesday}
		puts $m_days(1)
	};
}

#namespace eval combine {} {
#	#namespace export *
#	namespace import Counter::*
#	proc print {} {
#		puts [$m_count]
#	}
#}
#combine::print
Counter::Reset
for {set i 0} {$i<10} {incr i} {
	Counter::Increase 1;
}

puts [Counter::GetCounter]
::Counter::Operator::Print

::Counter::ArrayInNS

#namespace import Counter::*
#puts $GetCounter

puts [namespace children ::]
puts [namespace children Counter]
puts [namespace current]

