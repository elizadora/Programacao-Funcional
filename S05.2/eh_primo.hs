eh_primo x = foldl verificar True [2..x-1]
    where verificar res y = res && mod x y /= 0