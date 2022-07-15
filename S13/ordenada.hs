ordenada [] = True 
ordenada [x] = True
ordenada x = if head x <= head (tail x)
                then ordenada (tail x)
                else False 