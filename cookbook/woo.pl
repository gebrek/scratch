$toggle = 0;
foreach(1..10){
	print $_ . " ";
	if($_==5 && $toggle==0){
		$_ = 0;  #nope, can't reset $_ in foreach ;_;
		print "aha! ";
	}
}
