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

#�������ٸ��������ڽ�������ִ�й�
puts [info cmdcount]
#����ΪTcl���������صİ汾��
puts [info tclversion]
puts [info library]

#��һ��Ӧ��ʹ��Ŀ¼/usr/local/tcl/lib/shapes�µĿ⣬��������������Ӧ���ӣ�
set auto_path [linsert $auto_path 0 /usr/local/tcl/lib/shapes]



