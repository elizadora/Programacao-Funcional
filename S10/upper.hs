import Data.Maybe
convert x 
    | isJust $ busca = fromJust busca 
    | otherwise = x
    where 
        busca = lookup x $ zip ['a'..'z'] ['A'..'Z']

upper x = map convert x