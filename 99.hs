--7. flatten a nested structure

myflatten :: [[a]] -> [a]
myflatten [] = []
myflatten ( x:xs ) = x ++ myflatten xs

--that implementation can only deal with 2 levels of nestedness, which I suspect is due to the type [[a]]

myflatten [x] = [x]
myflatten x = foldr (++) (map myflatten x)
