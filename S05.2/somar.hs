somar_todos xs = foldl soma 0 xs
    where soma acc x = acc + x