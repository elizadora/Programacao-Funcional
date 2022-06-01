import Data.List

purifica Nothing Nothing = Nothing 
purifica (Just x)  Nothing  =  Just x
purifica Nothing (Just y) =  Just y
purifica (Just x) (Just y) =  Just $ x +  y

somaMaybe :: Maybe Int -> Maybe Int -> Maybe Int 
somaMaybe a b = purifica a b