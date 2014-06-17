#!/usr/bin/perl -w

$str = "this is ";
$str .= "a little" . (" " x 2 . "test") x 3;
$str .= " of string operators.";
print $str;
