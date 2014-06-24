sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty String!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r^2
    in sideArea + 2 * topArea

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Max of nothing"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- but that's ugly !

maximum'' :: (Ord a) => [a] -> a
maximum'' [ ] =  error "Max of nothing"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x:replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0   = []
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs

ziptrip :: [a] -> [b] -> [c] -> [(a,b,c)]
ziptrip [] _ _ = []
ziptrip _ [] _ = []
ziptrip _ _ [] = []
ziptrip (x:xs) (y:ys) (z:zs) = (x,y,z):(ziptrip xs ys zs)

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smaller = quicksort [a | a <- xs, a <= x]
        biggers = quicksort [a | a <- xs, a >  x]
    in  smaller ++ [x] ++ biggers
