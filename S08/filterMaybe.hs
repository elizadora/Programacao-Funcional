import Data.List
import Data.Maybe

filterMaybe :: [Maybe Int] -> [Int]
filterMaybe xs = [fromJust x | x <- xs, isJust x]