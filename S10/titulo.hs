import Data.Maybe
convertUpper x 
    | isJust $ busca = fromJust busca 
    | otherwise = x
    where 
        busca = lookup x $ zip ['a'..'z'] ['A'..'Z']

convertLower x
    | isJust $ busca = fromJust busca 
    | otherwise = x
    where 
        busca = lookup x $ zip ['A'..'Z'] ['a'..'z']

change (x:[]) = []
change (x:xs) 
    | x == ' ' = convertUpper(head xs) : change xs
    | otherwise = convertLower(head xs) : change xs


titulo xs = change (' ':xs)