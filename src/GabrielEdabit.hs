arrayOfMultiples x y = [x*y | y <- [1..y]]
squarePatch x = [ take x (repeat (x) ) | x <- take x (repeat x)]
