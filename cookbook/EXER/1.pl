$PI = 3.14159;
$radius = <STDIN>;
if($radius<0){
	$radius -= $radius;
}
$circ = 2 * $PI * $radius;
print $circ;
