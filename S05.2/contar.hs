contar x xs = foldl achei 0 xs
    where achei acc index = if x == index
                                then acc + 1 
                                else acc 