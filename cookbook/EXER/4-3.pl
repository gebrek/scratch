use strict;

sub above_average {
	my $ave = &average(@_);
	my @aboves;
	foreach(@_){
		if($_>$ave){
			push(@aboves,$_);
		}
	}
	@aboves;
}

sub average {
	&total / @_;
}

sub total {
	my $sum;
	foreach(@_){
		$sum += $_;
	}
	$sum;
}


my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(should be 6 7 8 9 10)\n";
my @barney = above_average(100,1..10);
print @barney;
