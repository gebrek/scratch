#!/usr/local/bin/perl -w

$fahr = 0;
$cel = 0;

print 'enter a termperature in Fahrenheit: ';
chomp ($fahr = <STDIN>);
$cel = ($fahr - 32) * 5 / 9;
print "$fahr degrees fahrenheit is eq to ";
printf ("%.0f degrees Celsius\n", $cel);
