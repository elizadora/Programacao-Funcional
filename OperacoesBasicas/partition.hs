splitints func xs = (filter func xs, filter nFunc xs)
    where
        nFunc x = not (func x)