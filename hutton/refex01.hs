{- 
Author: Robert Long

Haskell Refresher exercises from Hutton

-}

-- Chapter 3
--
-- Exercise 3

last' xs = head (reverse xs)

-- Chapter 4 - function definitions
-- 
-- Exercise 1

halve xs = (take n xs, drop n xs)
           where n = length xs `div` 2 

-- Exercise 2

third xs = head (tail (tail xs))
--third xs = xs !! 2
--third (_:_:x:_) = x

-- Exercise 3

--safetail xs = if null xs then [] else tail xs  
-- using conditional expressions

--safetail xs | null xs = []  -- using 
--            | otherwise = tail xs
-- using guarded equations

safetail [] = []
safetail (_:xs) = xs
-- using pattern matching

-- Chapter 5 - list comprehensions
