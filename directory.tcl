#!/bin/sh
# directory.tcl \
exec tclsh "$0" ${1+"$@"}

#����ǰ����Ŀ¼��pwd��Cd
#file   atime    name        ����һ��ʮ���Ƶ��ַ�������ʾ�ļ�name��󱻷��ʵ�ʱ��
#file    dirname    name 
#file    executable   name
#file    exists   name
#file  extension  name
#



puts [pwd]
puts [file mtime test.txt]
puts [file atime test.txt]
puts [file owned test.txt]
puts [file rename test.txt tt.txt]
puts [file rootname tt.txt]
puts [file size tt.txt]

puts [file rename tt.txt test.txt]
#puts [file stat E:/Users/Administrator/workspace/Circle uid]

puts [file tail E:/Users/Administrator/workspace/Circle]
puts [file type E:/Users/Administrator/workspace/Circle]







