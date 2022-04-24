unico y [] = False
unico y xs = 1 == busca y xs

busca y [] = 0
busca y (x:xs) = achei + busca y xs
    where achei = if x == y then 1 else 0