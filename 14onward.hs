--14.
dupli :: [a] -> [a]
dupli = concatMap (\x -> [x,x]) 

--15.
repli :: [a] -> Int -> [a]
repli l c = concatMap (replicate c) l

--16.
drop :: [a] -> Int -> [a]
drop l k = [l | ((elemIndex l) `mod` k == 0)]