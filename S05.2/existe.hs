existe x xs = foldl achei False xs
    where achei res y = res || x == y