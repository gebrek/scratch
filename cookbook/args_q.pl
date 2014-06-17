sub f {
	print @_ . "\n";
}

&f;
&f(1, 2, 3, 1);

sub max {
	my($n) = @_[0];
	foreach(@_){
		if($n<$_){
			$n=$_;
		}
	}
	$n;
}
print &max(1,2,7,10,2,14,9,-1) . "\n";
@array = qw/ 7 6 0 4 1 3/;
print @array;
push(@array,4);
$num = pop @array;
print "\n" . $num;
