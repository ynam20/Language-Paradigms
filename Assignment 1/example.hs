
main = return ()
sign:: Int -> String
sign x
  | x > 0 = "positive"
  | x < 0 = "negative"
  | otherwise = "zero"

dotolist :: [Int] -> (Int -> String)-> [String]
dotolist [] sign = []
dotolist(x:xs) sign = ((sign x) : dotolist xs sign)

usingmap :: [Int] -> (Int -> String) -> [String]
usingmap x y = map y x

times :: [Int] -> Int
times[] = 1
times(x:xs) = x * (times xs)

times1 :: [Int] -> Int
times1 x = foldr (*) 1 x 

helper :: Int -> Int -> Int
helper x () = x
helper x (y:ys) = (x*y) (ys)
times2 :: [Int] -> Int
times2(x:xs) = helper x xs

