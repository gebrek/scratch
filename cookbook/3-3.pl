chomp(@names = <STDIN>);
@names = sort @names;
foreach(@names){
	print $_ . " ";
}
