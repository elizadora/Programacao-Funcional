merge x [] = x
merge [] x = x
merge x y = if head x < head y
                then head x:(merge (tail x) y)
                else head y:(merge x (tail y))