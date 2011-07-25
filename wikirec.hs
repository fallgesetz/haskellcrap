-- http://en.wikibooks.org/wiki/Haskell/Recursion
replicat :: Int -> a -> [a]
replicat 0 x = []
replicat k x = x : replicat (k-1) x

index :: [a] -> Int -> a
index (x:xs) 0 = x
index (x:xs) k = index xs (k - 1)

myzip :: [a] -> [b] -> [(a,b)]
myzip (x:xs) (y:ys) = (x,y):myzip xs ys
myzip x y = []
