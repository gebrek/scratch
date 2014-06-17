@array = 5..9;
$fred = pop(@array);
@nums = 0..9;
@lets = 'a'..'j';
foreach (@nums) {
	print $_;
	foreach(@lets){
		print $_;
	}
	print "\n";
}
foreach (1..10) {
	print "\n";
}
