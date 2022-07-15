ehPrimo x = foldl verificar True [2..x-1]
    where verificar res y = res && mod y x /= 0

listaPrimos  = [x | x <- [2..], ehPrimo x]

expoentes a b = length $ takeWhile (\(a,b) -> a /= 0 && b == 0) $ iterate fun (a, mod a b)
    where fun (x, y) = (div x b, mod (div x b) b) 


fatore _ [] = []
fatore n (x:xs)
    | n == 1 = []
    | p == 0 = fatore n xs
    | otherwise = (x, p): fatore (n `div` (x ^ p)) xs
    where 
        p = expoentes n x



factors n = fatore n listaPrimos