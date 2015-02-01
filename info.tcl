#!/bin/sh
# info.tcl \
exec tclsh "$0" ${1+"$@"}

proc test {arg1 arg2} {
	set local1 1
	set local2 2
}

proc text {arg1 arg2} {
	set local1 1
	set local2 2
}

puts [info body test]

puts [info args test]
puts [info level]

#表明多少个命令曾在解释器中执行过
puts [info cmdcount]
#返回为Tcl解释器返回的版本号
puts [info tclversion]
puts [info library]

#若一个应用使用目录/usr/local/tcl/lib/shapes下的库，则在启动描述中应增加：
set auto_path [linsert $auto_path 0 /usr/local/tcl/lib/shapes]



