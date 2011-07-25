--http://en.wikibooks.org/wiki/Haskell/More_about_lists

takeint :: Int -> [a] -> [a]
takeint 0 a = []
takeint a [] = []
takeint k (a:as) = a : takeint (k - 1) as

dropint :: Int -> [a] -> [a]
dropint 0 x = x
dropint x [] = []	
dropint k (x:xs) = dropint (k-1) xs

sumint :: (Num a) => [a] -> a 
sumint [] = 0
sumint (x:xs) = (+) (sumint xs) x

scansum :: (Num a) => [a] -> [a]
scansum [] = []
scansum [x,y] = [x,x+y]
scansum (x:y:stuff) = x:scansum ((x + y):stuff)

diff :: (Num a) => [a] -> [a]
diff [] = []
diff [x] = [x]
diff (x:y:ss) = (y - x) : diff ss
