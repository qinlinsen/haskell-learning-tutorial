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

reverse2 xs= if null xs
             then xs
             else last xs : (reverse2 (init xs))
             {-[1,2,3] => 3:([1,2]) => 3:(2:[1])=> 3:(2:(1:[]))=> [3:2:1]-}


maxmin xs= if null (tail xs)
           then (head xs,head xs)
           else (
              if (head xs) > fst (maxmin (tail xs))
              then head xs
              else fst (maxmin (tail xs))
              ,if (head xs) < snd (maxmin (tail xs))
               then head xs
               else snd (maxmin (tail xs))
           )


maxmin2 xs= if null (tail xs)
            then (head xs,head xs)
            else(
              if (head xs) > fst (maxmin2 (tail xs))
              then head xs
              else fst (maxmin2 (tail xs))
              ,if (head xs) <snd (maxmin2 (tail xs))
               then head xs
               else snd(maxmin2 (tail xs))
            )
 {-In an if block, the lines for then and else must be indented the same way.
 In a let or a where block, all local bindings must start in the same position.         -}
maxmin3 xs=let h=head xs
           in if null (tail xs)
           then (h,h)
           else (if h > t_max then h else t_max,
                 if h<t_min then h else t_min)
                 where {
                 t=maxmin3(tail xs);
                                         t_max=fst t;
                                        t_min=snd t;
                 }



