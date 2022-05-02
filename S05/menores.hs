menores 0 xs = []
menores n xs = if length xs <= n
                    then xs
                    else menores n [x | x <- xs, x /= maximum xs]