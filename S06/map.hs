mymap _ [] = []
mymap function (x:xs) = function x : mymap function xs 