import Data.Char (toUpper)

uppercase :: [Char] -> [Char]
uppercase (l:ls) = toUpper l : uppercase ls
uppercase [] = []

uppsecaseMap ls = map toUpper ls
