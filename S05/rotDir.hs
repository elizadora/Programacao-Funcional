rotDir 0 xs = xs
rotDir n xs = rotDir (n-1) (last xs: init xs) 