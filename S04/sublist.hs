sublist begin end xs = drop begin' . take end' $ xs
    where
        begin' = if begin < 0 then begin + length xs else begin
        end' = if end < 0 then end + length xs else end