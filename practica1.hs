----1----
average3Numbers :: (Floating a) => (a,a,a) -> a 
average3Numbers(x,y,z) = (x+y+y+z)/4
-----2----
isLastDigit2 :: (Integral a) => [a]  -> Bool
isLastDigit2 isLastDigit3 
    |var3 == 3 = True
    |otherwise = False
    where
         var3 =  last isLastDigit3

------3------
has3Digits :: (Integral a) => [a]  -> Bool
has3Digits has3Digits2 
    |var3 == 3 = True
    |otherwise = False
    where
         var3 =  length has3Digits2
----
-----4---
posne :: (Integral a) => a -> Bool
posne x = if x<0 then True
else False


isNegative :: (Integral a) => a -> Bool
isNegative x 
    | x > 0 = False 
    | otherwise = True

-----5---

sumDigitos' :: Int -> Int
sumDigitos' 0 = 0
sumDigitos' n = n `mod` 10 + sumDigitos' (n `div` 10) 

--------------------6------------------------
even2Digit:: Int->Bool
even2Digit z
    | (z>9 && z<100) = even (z `mod` 10) && even((z `div` 10) `mod` 10)
    |  z>99 = error "Recuerda solo numeros de 2 digitos"

-------------------7----------------

sPrimeNumber :: (Integral a)=> a-> Bool
sPrimeNumber x= elem x[2,3,5,7,11,13,17,19]
-------------------------8-----------

isPrimeNumber :: (Integral a)=> a-> Bool
isPrimeNumber x= elem x[2,3,5,7,11,13,17,19]
isEvenAndPrimeNumber :: (Integral a)=> a-> Bool
isEvenAndPrimeNumber x = isPrimeNumber x && even(x)

---------------------9---------------
isMultiple :: Integer-> Integer -> Bool
isMultiple x z
    | x `mod` z ==0 = True
    | otherwise = False

---------------------10---------------
isEqual2Digits :: (Integral a)=> a -> Bool
isEqual2Digits x
    | x>9 && x<100 = if((x `mod` 10)==((x `div` 10) `mod` 10)) then True else False
    | x>99 = error "Eyyyy no tiene dos digitos "
    | x<10 = error "solo tiene 1 digito "
------- 11 -------
higher :: (Integral a) => a -> a -> a -> a
higher x y z = max x (max y z)

------- EJERCICIO 12 -------
isEvenSum2Number :: (Integral a) => a -> a -> Bool
isEvenSum2Number x y = even (x+y)

------- EJERCICIO 13 -------

sum2Digit2Number:: Int->Int->Int
sum2Digit2Number x y
    | (x>9 && x<100) && (y>9 && y<100) = (x `mod` 10)+((x `div` 10) `mod` 10) 
    + (y `mod`10)+((y `div` 10) `mod` 10)
    | (x<99 || y<99) || (y<9 && x<9) = error "te das cuenta que algun numero no tiene dos dígitos "

--------14-----------------
sum3Digits:: Int->Int
sum3Digits z
    | (z>99 && z<1000) = (z `mod` 10)+((z `div` 10) `mod` 10)+((z `div` 100) `mod` 10)
    | (z<100 || z>999) = error "EY NO tiene tres digitos "


    -------------15-------
equal3Digits:: Int->Bool
equal3Digits x
    | (x>99 && x<1000) = if((x `mod` 10)==((x `div` 10) `mod` 10)) then True else if (((x`mod` 10))==((x `div` 100) `mod` 10)) then True else if (((x `div` 10) `mod` 10)==((x`div` 100) `mod` 10)) then True else False
    | (x<100 || x>999) = error "El número no tiene tres dígitos "

-----------16------------
positionHigher3Digits:: Int->String
positionHigher3Digits x
    |(x<100 || x>999) = error "No cuenta con tres dígitos "
    | (x `mod` 10)>((x `div` 10) `mod` 10) && (x `mod` 10) > ((x `div` 100) `mod` 10) = "el my esta en posición 3"
    | ((x `div` 10) `mod` 10)>(x `mod` 10) && ((x `div` 10) `mod` 10)>((x `div` 100) `mod` 10) = "mayor en posición 2"
    | ((x `div` 100) `mod` 10)>(x `mod` 10) && ((x `div` 100) `mod` 10)> (x `mod` 10) = "El mayor esta en posición 1"

    -----Ejercicio 17
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

  --Ejercicio 18
safeDivision :: (Ord s, Floating s) => s -> s -> s
safeDivision x y
    |y == 0 = error "No es posible dividir entre 0"
    |otherwise = x / y

------------19
xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y)

-----------20-------
distance :: Floating a => (a, a) -> (a, a) -> a
distance (c1,y1) (c2,y2) = sqrt((c1-c2)^2+(y1-y2)^2)