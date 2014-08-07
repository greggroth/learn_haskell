module Chapter2.SimpleFunctions where

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst = if not (null lst) then head lst else "empty"

-- lst1 +++ lst2 = if null lst1
--                 then lst2
--                 else (head lst1) : (tail lst1 +++ lst2)

[] +++ list2 = list2
(x:xs) +++ list2 = x:(xs +++ list2)

reverse2 list = if null list
                then []
                else reverse2 (tail list) +++ [head list]

-- maxmin list = let h = head list
--                   in if null (tail list)
--                      then (h,h)
--                      else ( if h > t_max then h else t_max
--                           , if h < t_min then h else t_min)
--                           where t=maxmin (tail list)
--                                 t_max = fst t
--                                 t_min = snd t

maxmin [x] = (x,x)
maxmin (x:xs) = ( if x > xs_max then x else xs_max
                , if x < xs_min then x else xs_min
                ) where (xs_max, xs_min) = maxmin xs

sorted [] = True
sorted [_] = True
sorted (x : r@(y:_)) = x < y && sorted r

