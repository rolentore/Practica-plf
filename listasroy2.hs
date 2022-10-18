-----------1------------
firstToEnd :: (Read a) => [a] -> [a]
firstToEnd x  = reverse (x)
------------2-----------
mindAndMax :: (Ord a) => [a] -> [a]
mindAndMax xs = minimum xs : [maximum xs]
-----------3--------
minorsFirstElement :: (Integral a) => [a] -> [a]
minorsFirstElement roy = filter (head roy >) (tail roy)
-----------4------------
hy :: (Integral a) => [a] -> [a]
hy roy = filter (head roy <) (tail roy)
--------------------5--------------
minorsToSumFirstAndSecondElem :: Integral a => [a] -> [a]
minorsToSumFirstAndSecondElem list= [x | x <- tail (tail list) , x <head list + head(tail list)]
--------6-----
listSumDuplaToList :: Integral a => [(a,a)] -> [a]
listSumDuplaToList [] = []
listSumDuplaToList roy = fst(head roy) + snd (head roy) : listSumDuplaToList (tail roy)
-----------7------------
l3 :: Num a => (a,a,a)->a
l3 (x,y,z) = x
d3 :: Num a => (a,a,a)->a
d3 (x,y,z) = y
h3 :: Num a => (a,a,a)->a
h3 (x,y,z) = z

listMultTripletaToList :: (Integral a) => [(a,a,a)] -> [a]
listMultTripletaToList [] = []
listMultTripletaToList list = l3 (head list) * d3 (head list) * h3 (head list) : listMultTripletaToList (tail list)
--------------8-------
changeFstToSnd :: (Integral a) => [(a,a)] -> [(a,a)]
changeFstToSnd [] = []
changeFstToSnd roy = (snd (head roy),fst (head roy)) : changeFstToSnd (tail roy)
--------------9-----------
sumVectors :: (Num a) => [(a,a)] -> (a,a)
sumVectors [x] = (fst x,snd x)
sumVectors lista = (fst (head lista) + fst (sumVectors (tail lista)),snd (head lista) + snd (sumVectors (tail lista)))
--------10----
dividers :: (Integral a) => a -> [a]
dividers n = [x | x <- [1..n], (mod n x) == 0]
--------------11------------------
primeNumbers :: (Integral a) => a -> [a]
primeNumbers n = [x | x <- [2..n], dividers x == [1,x]]

------------12 ---------------------
infinitePrimeNumbers :: (Integral a) => [a]
infinitePrimeNumbers = [x | x <- [2..], dividers x == [1,x]]