-- (*) Find out whether a list is a palindrome.
-- λ> isPalindrome [1,2,3]
-- False

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xxs = xxs == reverse xxs

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [x] = True
isPalindrome' (x:xs) = x == last xs && isPalindrome' (init xs)

removeSpaces :: String -> String
removeSpaces = concat . words

printLine :: String -> IO ()
printLine str
    | isPalindrome' . removeSpaces $ str = putStrLn "Palindrome"
    | otherwise = putStrLn "Not palindrome"

main = do line <- getLine
          if null line
            then return ()
            else do printLine line
                    main
