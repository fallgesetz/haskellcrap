mybutlast :: [a] -> a
mybutlast x:y:[] = x
mybutlast x:xs = mybutlast xs
