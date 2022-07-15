invert x y = if x > 0
                then invert (div x 10) (10 * y + mod x 10)
                else y

rev x = invert x 0