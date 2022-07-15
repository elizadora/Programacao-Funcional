inserir x [] = [x]
inserir x y = if x < head y 
                then x:y 
                else (head y):inserir x (tail y)