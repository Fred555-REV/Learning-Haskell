myLast x = last x
myButLast x = x!!((length x)-2)
-- solution from site I liked most: reverse x !! 1
elementAt x y = x!!(y-1)
myLength x = length x
-- assuming myReverse can't just be reverse x
-- myReverse x = [x !! y | y <- [length x - 1..0]]
-- not working ^^^
isPalindrome x = if x == reverse x then True else False
-- compress x = do
--   let newList = null
--   newList++[x!!y| y <- [0..length x], x!!y /= [newList !! z| z<- [0..length newList]]]
--   return newList
-- tried to make a new list of unique items that don't exist in itself
