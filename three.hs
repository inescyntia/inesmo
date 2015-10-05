module Three where

import Data.List
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE


-- 1.a
null' [] = True
null' _ = False

--pembatas

take' _ [] = []
take' 0 xs = []
take' n (x:xs) = x : take' (n-1) xs

--pembatas

drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs

--pembatas

fst' (a,b) = a
--pembatas

snd' (a,b) = b

--pembatas

map' f [] = []
map' f (x:xs) = f x : map' f xs

--pembatas


filter' f [] = []
filter' f (x:xs)
  |f x == True = x : filter' f xs
  |otherwise = filter' f xs

--pembatas

delete' _ [] = []
delete' n (x:xs)
  |n == x = xs
  |otherwise = x : delete' n xs


--pembatas

deleteAll' _ [] = []
deleteAll' n (x:xs)
  |n == x = deleteAll' n xs
  |otherwise = x : deleteAll' n xs

--pembatas

--foldl' f n [] = n
--foldl' f n (x:xs)
--  |foldl' f (n:x:xs) = f n :foldl' f (f (n) (x))

--pembatas

--foldl1' f (x:xs) = f x : foldl1' f (xs)



--pembatas

zip' [] [] = []
zip' [] xs = []
zip' xs [] = []
zip' (a:as) (x:xs) = (a,x) : zip' as xs

--pembatas


zipWith' f [] [] = []
zipWith' f [] (xs) = []
zipWith' f (xs) [] = []
zipWith' f (a:as) (b:bs) = f a b : zipWith' f (as)(bs)


--pembatas
nth' (x:xs) 0 = x
nth' (x:xs) n = nth' (xs) (n-1)

--pembatas
--scanl' f n [] = [n]
--scanl' f n (a:b:bs) = n : scanl' f n a : scanl' f (f n a) b

--pembatas

--scanl1' f [] = []
--scanl1' f (a:b:bs) = f a : scanl1' f a ++ scanl1' f b

--pembatas

elem' _ [] = False
elem' n (x:xs)
  | n == x = True
  | n /= x = elem' n xs
--pembatas

notElem' _ [] = True
notElem' n (x:xs)
  | n == x = False
  | n /= x = notElem' n xs

--pembatas

head' (x:xs) = x

--pembatas

length' [] = 0
length' (x:xs) = 1 + length' xs


--pembatas

reverse' [x] = [x]
reverse' [] = []
reverse' (x:xs) = reverse xs ++ [x]

--pembatas

last' [x] = x
last' (x:xs) = last' xs

--pembatas

tail' (x:xs) = xs

--pembatas

init' [x] = []
init' (x:xs) = x : init' xs

--pembatas

max' x y
  | x == y = x
  | x > y = x
  | x < y = y

--pembatas

min' x y
  | x == y = x
  | x > y = y
  | x < y = x

--pembatas

concat' [[]] = []
concat' [] = []
concat' [x:xs] = (x:xs)
--pembatas

intersperse' _ [] = []
intersperse' n (x:xs) = x:n:intersperse' n xs

--pembatas

intercalate' [] [[]] = []
intercalate' [] [xs] = xs
intercalate' xs [[]] = []
intercalate' xs [] = []
intercalate' (as) [x:xs] = (x:xs)
--pembatas

and' [] = True
and' (x:xs)
  |x == True = and' xs
  |otherwise = False

--pembtas

or' [] = False
or' (x:xs)
  |x == True = True
  |otherwise = False

--pembatas

zip3' [] [] [] = []
zip3' xs [] [] = []
zip3' [] xs [] = []
zip3' [] [] xs = []
zip3' (a:as) (b:bs) (c:cs) = (a,b,c) : zip3' as bs cs

--pembatas

sum' [] = 0
sum' (x:xs) = x + (sum' xs)
--pembatas

product' [] = 1
product' (x:xs) = x * (product' xs)
--pembatas

--words' "" = []
--words'  = [String]

--pembatas

--lines' "" = []
--lines' "_" = ["_"]
-- knp pas di data type "_" malah jd list of char?

--pembatas

unlines' x = x

--pembatas

--unwords' [] = ""
--unwords'

--pembatas

takeWhile' f [] = []
takeWhile' f (x:xs)
  |f x == True = x : takeWhile' f xs
  |f x == False = []
--pembatas

dropWhile' f [] = []
dropWhile' f (x:xs)
  |f x == True = dropWhile' f xs
  |otherwise = (x:xs)

--pembatas

concatMap' f [] = []
concatMap' f (x:xs) = f x ++ concatMap' f xs

--pembatas

all' f [] = True
all' f (x:xs)
  |f x == True = all' f xs
  |otherwise = False
--pembatas

any' f [] = False
any' f (x:xs)
  |f x == False = any' f xs
  |otherwise = True

--pembatas

insert' x xs = x:xs

--pembatas


zipWith3' f [] [] [] = []
zipWith3' f (xs) [] [] = []
zipWith3' f [] (xs) [] = []
zipWith3' f [] [] (xs) = []
zipWith3' f (a:as) (b:bs) (c:cs) = f a b c : zipWith3' f as bs cs



--pembatas

-- 1.b


--nub' [] = []
--nub' (a:b:c:cs)
--  |a == b = a : nub' (b:c:cs)

--pembatas

--sort' [] = []
--sort' (a:b:bs)
--  |a < b = a : sort' (b:bs)
--  |otherwise = b : sort' (a:bs)

--pembatas


minimum' [a] = a
minimum' (a:b:bs)
  |a < b = minimum' (a:bs)
  |otherwise = minimum' (b:bs)

--pembatas

maximum' [a] = a
maximum' (a:b:bs)
  |a > b = maximum' (a:bs)
  |otherwise = maximum' (b:bs)

--pembatas

inits' [] = [[]]
inits' (x:xs) = [] ++ [x]:inits' xs

--pembatas

tails' [] = [[]]
tails' (x:xs) = (x:xs) : tails' xs

--pembatas

--union' [] [] = []
--union' [] xs = xs
--union' xs [] = xs
--union' (a:as) (b:bs)
--  |a == b = a : union (as) (bs)
--  |otherwise = a : b : union' (as) (bs)

--pembatas

intersect' [] []= []
intersect' [] _ = []
intersect' _ [] = []
intersect' (x:xs)(a:as)
  |x == a = x : intersect' xs as

--pembatas

group' [] = []
group' (x:xs) = [x] : group' xs

--pembatas

--splitAt' _ [] = ([],[])
--splitAt' 0 (xs) = ([] ++ (xs))
--splitAt' n (x:xs) = (x : splitAt' (n-1) (xs))



--pembatas

partition' x = x

--pembatas

replicate' 0 _ = []
replicate' a b = b : replicate (a-1) b

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T US GOOGLE
