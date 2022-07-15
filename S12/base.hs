text ind = (['0'..'9'] ++ ['A'..'Z']) !! ind
base 0 b = []
base number b = base (div number b) b ++ [text(mod number b)]