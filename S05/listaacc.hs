listaacc [] = []
listaacc x = listaacc (init x) ++ [sum x]