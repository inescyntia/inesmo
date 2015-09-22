module One where

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

filter' x = x

--pembatas

--delete' _ [] = []
--delete' x (x:xs) = xs

--pembatas

deleteAll' x = x

--pembatas

foldl' x = x

--pembatas

foldl1' x = x

--pembatas

--zip' [] [] = []
--zip' [] xs = []
--zip' xs [] = []
--zip' x xs
--   x == x = (x,x) : zip' xs xs



--pembatas

zipWith' x = x

--pembatas

nth' x = x

--pembatas

scanl' x = x

--pembatas

scanl1' x = x

--pembatas

--elem' _ [] = False
--elem' x (x:xs)
--  | x == x = True
--  | x /= x = False
--pembatas

notElem' x = x

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

intersperse' x = x

--pembatas

intercalate' x = x

--pembatas

and' [True] = True
and' [False] = False
--and' [True, True, _]
--  | _ == False = False
--  | _ == True = True
--and' [False, False, _ ] = False

--pembatas

or' x = x

--pembatas

--zip3' [] [] [] = []
--zip3' [] [] xs = []
--zip3' [] xs xs = []
--zip3' xs [] [] = []
--zip3' xs xs [] = []
--zip3' [] xs [] = []
--zip3' (x:xs) (x:xs) (x:xs) = (x,x,x) : zip3' xs xs xs
--pembatas

sum' [] = 0
sum' (x:xs) = x + (sum' xs)

--pembatas

product' [] = 1
product' (x:xs) = x * (product' xs)
--pembatas

--words' "" = []
--words' String = [String]

--pembatas

lines' x = x

--pembatas

unlines' x = x

--pembatas

unwords' x = x

--pembatas

takeWhile' x = x

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

nub' x = x

--pembatas

sort' x = x


--pembatas

minimum' x = x

--pembatas

maximum' x = x

--pembatas

inits' x = x

--pembatas

tails' [] = [[]]
tails' (x:xs) = (x:xs) : tails' xs

--pembatas

--union' [] [] = []
--union' [x] [x] = [x]
--union' [x] xs = (x:xs)

--pembatas

intersect' x = x

--pembatas

group' [] = []
group' (x:xs) = [x] : group' xs

--pembatas

splitAt' x = x

--pembatas

partition' x = x

--pembatas

replicate' 0 _ = []
replicate' a b = b : replicate (a-1) b

--pembatas
-- First Assignment
-- Reimplement Haskell function
-- DON'T USE GOOGLE
