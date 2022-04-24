menor xs = foldl guardar (head xs) xs
    where guardar acc x = if acc < x
                            then acc
                            else x