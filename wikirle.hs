import Data.List

factors p = [f | f <- [1..p], p `mod` f == 0]

--negate expects num, so our declaration must specify num
negate_list :: (Num a) => [a] -> [a]
negate_list x = map negate x

--run length encoding
encode :: (Eq a) => [a] -> [(a, Integer)]
encode x = map list_to_tuple (group x)

list_to_tuple :: (Eq a) => [a] -> (a, Integer)
list_to_tuple x:xs = (x,1) + list_to_tuple xs 

