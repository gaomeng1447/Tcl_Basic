#!/bin/sh
# file.tcl \
exec tclsh "$0" ${1+"$@"}

#tcl file I/O characteristics:
#gets, puts, close, ...
#stdin, stdout, stderr, ...
#seek, 



#gets   fileId   ?varName?      读fileId标识的文件的下一行
#read ?-nonewline?  fileId     读并返回fileId标识的文件中所有剩下的字节。如果没有nonewline 开关，则在换行符处停止
#seek  fileId   2000    改变fieleId标识的文件访问点，以便下次读写开始于文件的第 2000个字节
#tell  fileId      返回fileId标识的文件的当前访问位置



proc tgrep { pattern filename } {
	set f [open $filename r]
	while { [gets $f line] } {
		if { [regexp $pattern $line] } {
			puts stdout $line
		}
	}
	close $f
}

puts gaomeng 
