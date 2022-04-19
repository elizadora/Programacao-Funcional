elemento' ind (x:xs) = if ind == 0 then x else elemento' (ind - 1) xs
elemento ind xs = elemento' indReal xs
    where indReal = if ind < 0 then ind + length xs else ind 