ehPrimo x = foldl verificar True [2..x-1]
    where verificar res y = res && mod y x /= 0