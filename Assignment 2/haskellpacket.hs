
{-1a-}
zoomUp x = x : zoomUp(x+1)
evenfunction = filter even (zoomUp 0)


{-1b-}
timestwo x = x*2
doubles x = map timestwo x

{-1c-}
posdoubles:: [Int] -> [Int]
posdoubles x = filter (>0) (doubles x)

{-1d-}
sqrtapprox n x = (x+n/x)/2

sqrtlist n x = (iterate (sqrtapprox n) x)


makepairs x = zip x (tail x)



returnsecond :: [Int] -> Int -> Int
returnsecond (x:xs) z 
 | abs (x - xs!!0) < z = xs!!0 
 | otherwise = returnsecond (xs) z

search prev n t 
 | (prev - sqrtapprox n prev) < t = sqrtapprox n prev 
 | otherwise = search (sqrtapprox n prev) n t 

within n t = search (sqrtapprox n (n/2)) n t 

functionlist [] [] = []
functionlist (a:as) (b:bs) = a $ b  : functionlist as bs 

functionlist2 [a] b = map ($ b) a


add a b
 | a == b = []
 | otherwise = [b]

remove a [] = []
remove a (b:bs) = add a b ++ remove a bs



remove2 [] b = b
remove2 (a:as) b = remove2 as (remove a b)



prefunction a b = (a : first b) : b

first (a:as)  = a

prefix a = foldr prefunction [[]] (reverse a)
finalprefix a = map reverse (prefix a)

addeach a b = a ++ b

merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) = x:y:merge xs ys

poweradd a b = merge (a : map (addeach a) b) b
finalpower a = foldr poweradd [] a



addit a b = a+b 
gettail (a:as) = as
multiples a = takeWhile (<=10000) (iterate (addit a) a)
z = [x | x <- [2..10000]]
nums = [x | x<- [2..500]]

removemultiples a b = remove2 (gettail (multiples a)) b


reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]
sieve = foldr removemultiples z (reverseList nums)



{-in order to find the powerset for string "abc", you must do the following in the command line:
finalpower ["a", "b", "c"]-}


{-insert x [] = [x]
insert x (y:ys)
  | x < y     = x : y : ys
  | otherwise = y : insert x ys 

insertsort a =  foldr insert [] a

primenumbers a = foldr1 removemultiples a-}







