data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left" Empty Empty)
                           (Node "right" Empty Empty)
