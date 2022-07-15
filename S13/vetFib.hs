vetFib 0 = []
vetFib 1 = [0]
vetFib 2 = [0,1]

vetFib x = vetFib(x-1) ++ [last (vetFib(x-1)) + last (vetFib(x-2))]
