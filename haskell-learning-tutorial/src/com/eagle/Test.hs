module Test where
--define a function

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst=if not (null lst) then head lst else "empty"

helloworld a=putStrLn a


lst1 +++ lst2 = if null lst1
                then lst2
                else head lst1 :(tail lst1 +++ lst2)
                
                
test2 xs ys = if null xs
              then ys
              else head xs: (test2 (tail xs) ys)
