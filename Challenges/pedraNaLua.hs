getTuple line = (a,b)
    where 
        tokens = words line
        a = toInt $ head tokens
        b = toInt $ last tokens


toInt :: String -> Int
toInt x = read x :: Int

classificado (a, (b, c)) = b >= 10 && c >= 10

pegarMelhor xs
    |null xs = -1
    |otherwise = fst $ foldl1 selecionar xs
    where selecionar (a, (b, c)) (d, (e, f)) = if abs(b - c) > abs (e - f) then (d, (e, f)) else (a, (b, c))

processa :: [String] -> String
processa vet
    | res == -1 = "sem ganhador"
    | otherwise = show res
            where 
                unir = zip [0..] $ map getTuple vet
                classificados = filter classificado unir
                res = pegarMelhor classificados



main :: IO ()
main = do
    print $ processa ["10 8", "9 13"]
    print $ processa ["9 12", "11 13", "10 11"]
    print $ processa ["12 15", "16 14", "10 9"]