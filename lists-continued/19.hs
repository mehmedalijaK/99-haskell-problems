-- Problem 19
-- (**) Rotate a list N places to the left.
-- λ> rotate ['a','b','c','d','e','f','g','h'] 3
-- "defghabc"
-- λ> rotate ['a','b','c','d','e','f','g','h'] (-2)
-- "ghabcdef"

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xxs 0 = xxs
rotate xxs n = take len $ drop (len+n) (cycle xxs)
        where len = length xxs