#!/bin/sh
# format_scan.tcl \
exec tclsh "$0" ${1+"$@"}

;#Ҫȡ��2����Ԫֵ����5��λ��˵�����ĸ�ʽΪ2$������\�����÷���$��
set res [format "%2\$s" 1 5 9]
puts $res

set str [format "%3\$s  %1\$s  %2\$s"  "are" "right" "You"]
puts $str

#������ӳ�䵽��Ӧ��ASCII�ַ�
set str [format "%c" 90]
puts $str

#ʹ�ֶ������
set str [format "%-c" 90]
set str [format "%+c" 90]
puts $str

;#��20ת��Ϊʮ���������������ǰ׺��0x��
;#�ܿ��Ϊ8Ϊ���Ҷ��루Ĭ�ϣ���ǰ���ո���0���롣
set str [format "%#08x"  20]
puts $str

set str [format "%space"  20]
puts $str

###############################################scan:

set num [scan "abcABC" "%c%c%c" ]
puts $num

scan "ABC" "%c%c" var1 var2
puts "$var1 and $var2"
