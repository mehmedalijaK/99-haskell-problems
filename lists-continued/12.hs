-- (**) Decode a run-length encoded list.
-- λ> decodeModified 
--        [Multiple 4 'a',Single 'b',Multiple 2 'c',
--         Multiple 2 'a',Single 'd',Multiple 4 'e']

data Packed a = Single a | Multiple Int a deriving Show

singleDecode :: Packed a -> [a]
singleDecode (Single a) = [a]
singleDecode (Multiple i a) = replicate i a

decodeModified :: [Packed a] -> [a]
decodeModified = concatMap singleDecode

decodeModified' :: [Packed a] -> [a]
decodeModified' [] = []
decodeModified' (x:xs) = singleDecode x ++ decodeModified' xs