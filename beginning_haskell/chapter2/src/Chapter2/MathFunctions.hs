ifibonacci n | n < 0     = Nothing
ifibonacci 0             = Just 0
ifibonacci 1             = Just 1
ifibonacci n | otherwise = let (Just f1, Just f2) = (ifibonacci (n-1), ifibonacci (n-2))
                           in Just (f1 + f2)

binom _ 0          = 1
binom x y | x == y = 1
binom n k          = (binom (n-1) (k-1)) + (binom (n-1) k)

-- Ex 2-6
ackermann m n
    | m == 0          = n + 1
    | m > 0 && n == 0 = ackermann (m-1) 1
    | m > 0 && n > 0  = ackermann (m-1) (ackermann m (n-1))

munzip [] = []
munzip (x,y) = (x,y)
munzip ((x,y):rest) = (x : (fst (munzip rest)), y : (snd (munzip rest)))
