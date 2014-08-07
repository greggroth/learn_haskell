filterOnes :: [Integer] -> [Integer]
filterOnes xs = filter (\x -> x == 1) xs

filterANumber :: Integer -> [Integer] -> [Integer]
filterANumber n xs = filter (\x -> x == n) xs

filterNot :: (a -> Bool) -> [a] -> [a]
filterNot f xs = [ x | x <- xs, not $ f x ]


