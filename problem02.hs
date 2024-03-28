myLast :: Num a => [a] -> a 
myLast (x:y:[]) = x
myLast (x:xs) = myLast(xs) 
