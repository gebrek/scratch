use strict;
my @greetee;

sub greet {
	if(@greetee == 0){
		print "Hello, @_[0]. You're the first one here.\n";
	}else{
		print "Hello, @_[0]. Before you was";
		foreach(@greetee){
			print ' ' . $_;
		}
		print ".\n"
	}
	push(@greetee,@_[0]);
}

greet("fred");
greet("barney");
greet("tom");
greet("john");
