module DataTypeTest where
{-
*DataTypeTest> clientName2 (GovOrg "a")
"a"
*DataTypeTest> clientName2 (Company "a" 1 "b" 2)
"a"
*DataTypeTest> clientName2 (Individual (Person "a" "b" Female ))
"a***b"
-}

data Client=GovOrg String
            | Company String Integer String Integer
            | Individual Person
            deriving Show


data Person=Person String String Gender
            deriving Show


data Gender = Male
              | Female
              | Unknown
              deriving Show

{-type signature  注意构造方法的参数之间的分割符是空格不是逗号-}
{-clientName (GovOrg "a")-}
{-match company  clientName (Company "a" 1 "b" 2)-}

{-match Individual   clientName (Individual(Person "donald" "trump" Female))-}

clientName :: Client -> String
clientName client=case client of
                  GovOrg name     -> name
                  Company name id person resp -> name
                  Individual person  ->
                                           case person of Person fName lName gender -> fName ++ "&hello&" ++ lName
clientName2 x= case x of
               GovOrg p               -> p
               Company p _ _ _       -> p
               Individual (Person firstName lastName _) ->
                                firstName ++ "*****" ++ lastName

fibonacci :: Integer -> Integer
fibonacci n = case n of
              1 -> 0
              2 -> 1
              _ -> fibonacci(n-1) + fibonacci(n-2)
              
              
companyName :: Client -> String
companyName client = case client of
                     Company name _ _ _ -> name
{-companyName2(Company "a" 1 "b" 2)-}

companyName2 :: Client -> Maybe String
companyName2 client = case client of 
                      Company name _ _ _ -> Just name
                      _                  -> Nothing




f(GovOrg name)                              =name
f(Company name _ _ _)                       =name
f(Individual(Person firstName lastName _))  =firstName ++ " "++ lastName

g(0)=0
g(1)=1
g(n)=g(n-1) + g(n-2)


                 
