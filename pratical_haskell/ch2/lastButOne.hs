-- Does not work with lenght-1 lists
lastButOne :: [a] -> Maybe a

lastButOne (x:[xs]) = Just x
lastButOne (x:xs) = lastButOne xs
lastButOne _ = Nothing

-- lastButTwo :: [a] -> Maybe a

-- lastButTwo (x:[ys]:[xs]) = Just x
-- lastButTwo (x:xs) = lastButTwo xs
-- lastButTwo _ = Nothing



