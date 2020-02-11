module TupleListTests where
concatList :: [a] -> [a] -> [a]
concatList list1  list2 =case list1 of
                 []    -> list2
                 x:xs  -> x:(concatList xs list2)


[] +++ list2=list2
(x:xs) +++ list2=x:(xs +++ list2)

sorted :: [Integer] -> Bool
sorted [] =True
sorted [_] =True
sorted(x:y:zs) =x<y && sorted(y:zs)

{-
maxmin [x] =(x,x)
maxmin (x:xs) =(if x> xs_max then x else xs_max
               ,if x<xs_min then x else xs_min) where (xs_max,xs_min)=maxmin(xs)
-}

maxmin [x]=(x,x)
maxmin (x:xs)=(if x>xs_max then x else xs_max
           ,if x<xs_min then x else xs_min) where (xs_max,xs_min)=maxmin(xs)

fibonacci :: Integer -> Maybe Integer
fibonacci n = if n<0
              then Nothing
              else case n of
                   0 -> Just 0
                   1 -> Just 1
                   n -> let Just f1=fibonacci(n-1)
                            Just f2=fibonacci(n-2)
                        in Just(f1+f2)


{-
ifibonacci :: Integer -> Maybe Integer
ifibonacci n =if n < 0
              then Nothing
              else case n of
                   0 -> Just 0
                   1 -> Just 1
                   n -> let Just f1 = ifibonacci(n-1)
                            Just f2=ifibonacci(n-2)
                        in Just(f1+f2)-}

ifibonacci n | n<0 =Nothing
ifibonacci 0 =Just 0
ifibonacci 1 =Just 1
ifibonacci n =let (Just f1,Just f2)=(ifibonacci(n-1),ifibonacci(n-2))
                          in Just(f1+f2)


multiplyOf :: Integer -> Integer -> Bool
multiplyOf x y =(mod x y)==0

specialMultiply :: Integer -> String
specialMultiply n | multiplyOf n 2= show n ++ " is multiply of 2"
                  | multiplyOf n 3=show n ++ " is multiply of 3"
                  | multiplyOf n 5= show n ++ " is multiply of 5"
                  | otherwise =show n ++ " is a beautiful number"
