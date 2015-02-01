#!/bin/sh
# file.tcl \
exec tclsh "$0" ${1+"$@"}

#tcl file I/O characteristics:
#gets, puts, close, ...
#stdin, stdout, stderr, ...
#seek, 



#gets   fileId   ?varName?      ��fileId��ʶ���ļ�����һ��
#read ?-nonewline?  fileId     ��������fileId��ʶ���ļ�������ʣ�µ��ֽڡ����û��nonewline ���أ����ڻ��з���ֹͣ
#seek  fileId   2000    �ı�fieleId��ʶ���ļ����ʵ㣬�Ա��´ζ�д��ʼ���ļ��ĵ� 2000���ֽ�
#tell  fileId      ����fileId��ʶ���ļ��ĵ�ǰ����λ��



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
