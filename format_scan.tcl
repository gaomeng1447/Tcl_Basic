#!/bin/sh
# format_scan.tcl \
exec tclsh "$0" ${1+"$@"}

;#要取第2个变元值，即5。位置说明符的格式为2$，并用\来引用符号$：
set res [format "%2\$s" 1 5 9]
puts $res

set str [format "%3\$s  %1\$s  %2\$s"  "are" "right" "You"]
puts $str

#将整数映射到对应的ASCII字符
set str [format "%c" 90]
puts $str

#使字段左对齐
set str [format "%-c" 90]
set str [format "%+c" 90]
puts $str

;#将20转换为十六进制数，并添加前缀”0x”
;#总宽度为8为，右对齐（默认），前导空格用0补齐。
set str [format "%#08x"  20]
puts $str

set str [format "%space"  20]
puts $str

###############################################scan:

set num [scan "abcABC" "%c%c%c" ]
puts $num

scan "ABC" "%c%c" var1 var2
puts "$var1 and $var2"
