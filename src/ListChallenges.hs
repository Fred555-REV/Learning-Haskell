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
pack x = [if y == 0 then x!!y else if x!!y == x!!(y - 1) then (x !! (y - 1)) ++ x!!y else x !! y | y <- [0..length x-1]]
-- ["a","a","a","a","b","c","c","a","a","d","e","e","e"]
-- ["a","aa","aa","aa","b","c","cc","a","aa","d","e","ee","ee","*** Exception: Prelude.!!: index too large
-- need to make a way to affect the previous one without adding on to list, I had length x without -1 so index too large
