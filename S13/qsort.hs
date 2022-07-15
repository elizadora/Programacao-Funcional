qsort [] = []
qsort x = qsort [y | y <- tail x, head x > y] ++ [head x] ++ qsort [z | z <- tail x, head x <= z]