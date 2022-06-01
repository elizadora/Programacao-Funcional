import Data.List
import Data.Maybe

--função que retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop (index - lim) $ take (index + lim + 1) xs 

--função para verificar elemento no vetor
exists :: Eq a => a -> [a] -> Bool
exists y xs = isJust $ elemIndex y xs

--função para converter de digito para char
dig2char :: (Eq a, Num a, Enum a) => a -> Char
dig2char dig = fromJust $ lookup dig $ zip [0..9]  ['0'..'9']

--função que insere esse valor nesse index e retorna o novo vetor resultante
set :: String -> Int -> Int -> String
set xs index value = take (index - 1) xs ++ [dig2char value] ++ drop (index + 1) xs

--função qeu pega as posições de todos os .
getHoles :: String -> [Int]
getHoles xs = [i | (y, i) <- zip xs [0..],  y == '.']


-- verifica se esse valor pode ser inserido nesse índice
-- fit :: (String, Int) ->  Int -> Int -> Bool
-- fit (xs, lim) index value = ...