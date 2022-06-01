myfilter _ [] = []
myfilter function (x:xs) = if function x
                                then x : myfilter function xs
                                else myfilter function xs
