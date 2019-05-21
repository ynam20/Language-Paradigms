module TreeModule (value, leftSub, rightSub, initTree, splice, empty, traversal, containsvalue, insert, add, construct, Tree) where

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving Show

value (Node v t1 t2) = v
leftSub (Node v t1 t2) = t1

-- these are stubs that do not yet work.
-- you should be able to figure out what they should
-- do from the intended sample output

rightSub (Node v t1 t2) = t2

initTree x = Node x EmptyTree EmptyTree
splice x l r = Node x l r
empty EmptyTree = True


traversal EmptyTree = []
traversal (Node v l r) = traversal l ++ traversal r ++ [v]

containsvalue x [] = False
containsvalue x (a:as)
 | x == a = True
 | otherwise = containsvalue x as

insert :: (Ord a) => a -> Tree a -> Tree a
insert x EmptyTree = initTree x
insert x (Node a left right)
   | x < a  = Node a (insert x left) right
   | x > a  = Node a left (insert x right)

add v a
 | containsvalue v (traversal a) = a
 | otherwise = insert v a

construct f [] = EmptyTree
construct f (a:as) = f a (construct f as)

constructfinal l = construct add l  

counter a b c = [a] ++ b ++ c
 



foldrTree :: (a -> b -> b -> b) -> b -> Tree a -> b
foldrTree f z EmptyTree = z
foldrTree f z tr = f (value tr) (foldrTree f z (leftSub tr)) (foldrTree f z (rightSub tr))



count t = length(foldrTree counter [] t)





