doubleMe x = x + x
doubleSmallNumber x = if x > 100
						then x
						else x*2

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

take3 a = take 3 a

boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <- xs, odd x]

bgi = [exp x 
		| x <- [1,4..20]
		, x < 15]

square n = n * n

triangles = [(a,b,c) | a <- [1..30]
					 , b <- [a..30]
					 , c <- [b..30]
			,a^2 + b^2 == c^2]

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
	| bmi <= skinny = "*LOW*"
	| bmi <= normal = "*MED*"
	| bmi <= fat 	= "*LRG*"
	| otherwise   	= "*HGE*"
	where bmi = weight / height ^ 2
		  (skinny, normal, fat) = (18.5, 25.0, 30.0)

greeting :: String -> String -> String
greeting firstname lastname  = [f] ++ ". " ++ [l] ++ "."
		where (f:_) = firstname
			  (l:_) = lastname
