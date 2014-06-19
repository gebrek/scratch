sub total {
	my $sum;
	foreach(@_){
		$sum += $_;
	}
	$sum;
}


my @fred = qw( 1 3 5 7 9 );
my $fred_total = total(@fred);
print "total is $fred_total.\n";
print "Enter some numbers on separate lines: ";
#my $user_total = total(<STDIN>);
#print "total is $user_total";

print total(1..1000);
