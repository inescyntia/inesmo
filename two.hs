module One where

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

filter' (_) [] = []
filter'

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

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

zip' [] [] = []
zip' [] xs = []
zip' xs [] = []
zip' (a:as) (x:xs) = (a,x) : zip' as xs

--pembatas

zipWith' x = x

--pembatas

nth' (x:xs) 0 = x
nth' (x:xs) n = nth' (xs) (n-1)

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

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
intercalate' a [x:xs] = (x:xs)
--pembatas

--and' [] = True
--and' x xs
--  |x && xs == True =True
--  |otherwise = False

--pembtas

--or' [] = False
--or' (x:xs) = True = True
--or' (x:xs) = False = False
--or' x xs
--  |x == True = True
--  |x == False = or' xs

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

words' "" = []
words'  = [String]

--pembatas

lines' "" = []
--lines' "_" = ["_"]
-- knp pas di data type "_" malah jd list of char?

--pembatas

unlines' x = x

--pembatas

--unwords' [] = ""
--unwords' 

--pembatas

--takeWhile' f [] = []
--takeWhile' f (x:xs) = f x : takeWhile' f xs


--pembatas

dropWhile' x = x

--pembatas

concatMap' x = x

--pembatas

all' x = x

--pembatas

any' x = x

--pembatas

insert' x xs = x:xs

--pembatas

zipWith3' x = x

--pembatas

-- 1.b

--nub' [] = []
--nub' (y:z:zs) = (y:z:zs)
--  where y /= z

--pembatas

--sort' [] = []
--sort' (a:b:bs)
--  |a < b && b < bs

--pembatas


--minimum' [a] = a
--minimum' a b bs
--  |a < b = minimum' (a:bs)
--  |otherwise = minimum' (b:bs)

--pembatas

--maximum' x = x

--pembatas

--inits' [] = [[]]
--inits' (a:b:bx) =([]++[a]):([]++[a]++[b]):inits' b


--pembatas

tails' [] = [[]]
tails' (x:xs) = (x:xs) : tails' xs

--pembatas

--union' [] [] = []
--union' xs as
--  |xs == as = xs
--  |xs /= as
--union' (a:b:bs) (c:d:ds)
--  |a < c = a : union' (b:bs) (c:d:ds)
--  |a > c = union' (a:b:bs) (d:ds)


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
--splitAt' 0 (xs) = ([],(xs))
--splitAt' n (x:xs) = splitAt' (n-1) (xs) ++ [x]



--pembatas

partition' x = x

--pembatas

replicate' 0 _ = []
replicate' a b = b : replicate (a-1) b

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T US GOOGLE
