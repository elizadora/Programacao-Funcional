countNeg [] = 0
countNeg xs = length(filter(<0) xs)