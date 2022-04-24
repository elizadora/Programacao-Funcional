-- frequencia x xs =  length $ filter (==x) xs 

-- frequencia x xs = length [y | y <- xs, x == y]

frequencia y [] = 0
frequencia y (x:xs) = soma + frequencia y xs
    where
        soma = if x == y then 1 else 0