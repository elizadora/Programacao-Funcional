removerMaior [x] = []
removerMaior xs = [x | x <- xs, x /= maximum xs]