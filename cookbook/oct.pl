#!/usr/bin/perl -w
$num = '0x432';
print $num;
print "\n";
$hexnum = oct $num;
print $hexnum;
print "\n";
$num = '0123';
print (oct $num);
print "\n";
if("foo"){
	print "foo is troo\n";
}else{
	print "false!\n";
}
$str = "foo";
print $str . "\n";
$str .= "bar";
print $str . "\n";
print 10 x 5 . "\n";
