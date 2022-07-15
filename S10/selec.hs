import Data.Maybe (fromJust)

busca x y = fromJust $ lookup y $ zip [0..] x
selec x y = map (busca x) y