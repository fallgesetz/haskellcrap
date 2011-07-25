factors p = [f | f <- [1..p], p `mod` f == 0]

--negate expects num, so our declaration must specify num
negate_list :: (Num a) => [a] -> [a]
negate_list x = map negate x

--run length encoding
rle :: String -> [(String, Integer)]
rle x = map encode (mygroup x)

encode :: [a] -> [a]
encode ( x:xs ) = (x, length xs + 1)

mygroup::[a] -> [[a]]
mygroup [] = []
mygroup	[x] = [[x]]
mygroup ( x:y:stuff ) = [x] : mygroup (y:stuff)
mygroup ( x:x:stuff ) = [x,x] : mygroup stuff
