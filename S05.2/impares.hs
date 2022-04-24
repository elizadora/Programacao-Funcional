impares xs = foldl eh_impar 0 xs
    where eh_impar acc x = if mod x 2 /= 0
                                then acc + x
                                else acc