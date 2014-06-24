pblm1 :: Integer
pblm1 = sum [x|x<-[1..999],mod x 3 == 0 || mod x 5 == 0]

fib :: (Num a, Ord a) => a -> [a]
fib limit = fibHelper limit 1 1

fibHelper :: (Num a, Ord a) => a -> a -> a -> [a]
fibHelper limit n m 
    | limit <= m = []
    | otherwise  = m:fibHelper limit m (n+m)

pblm2 :: Integer
pblm2 = sum (filter (even) (fib 4000000))

factor :: Integral t => t -> [t]
factor n = [x|x<-[1..n],(mod n x)==0]

isPrime :: Integral a => a -> Bool
isPrime n 
    | length (factor n) == 2 = True
    | otherwise              = False

-- NOT efficient
pblm3 :: Integer
pblm3 = maximum (filter isPrime (factor 600851475143))

