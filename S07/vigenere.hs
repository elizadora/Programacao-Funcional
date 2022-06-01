import Data.List
import Data.Maybe


toLower :: Char -> Char
toLower c = fromMaybe c $ lookup c $ zip ['A'..'Z'] ['a'..'z']

letterToInt :: Char -> Int
letterToInt c = fromJust $ elemIndex c ['a'..'z']

intToLetter :: Int -> Char
intToLetter i = fromJust $ lookup i $ zip [0..] ['A'..'Z'] 

cypherSum :: Char -> Char -> Char
cypherSum a b = intToLetter $ ((letterToInt . toLower $ a) + (letterToInt . toLower $ b)) `mod` 26

vigenere :: [Char] -> [Char] -> [Char]
vigenere texto chave = zipWith cypherSum texto (cycle chave)