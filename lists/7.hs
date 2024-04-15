-- (**) Flatten a nested list structure.
-- λ> flatten (Elem 5)
-- [5]

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)