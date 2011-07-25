--7. flatten a nested structure

myflatten :: [a] -> [a]
myflatten [] = []
myflatten ([x]:xs) = (myflatten [x]) ++ (myflatten xs)
myflatten (x:xs) = x:(myflatten xs)
