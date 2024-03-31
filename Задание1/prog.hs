(?) cond a = if cond then (\x -> a) else (\x -> x)

toLowEven :: Int -> Int
toLowEven x = (even x) ? x $ x-1

findDoubleString :: String -> Int -> Int -> Int
findDoubleString str i middle =
        if i > middle
        then
            if str !! (i-1) == str !! (i - middle - 1)
            then
                findDoubleString str (i-1) middle
            else
                findDoubleString str newI newMiddle
        else
            middle

    where newI = toLowEven (i-1)
          newMiddle = newI `div` 2

numberCopyOperation :: String -> Int
numberCopyOperation str = findDoubleString str i middle

    where i = toLowEven $ length str
          middle = i `div` 2

result :: String -> Int -> String
result "" _ = ""
result str num = result (take lenNextStr str) num ++ sep ++ str

    where len = length str
          sep = (len > 0) ? "->" $ " = "
          lenNextStr = (num * 2 == len) ? num $ len-1
          

main :: IO ()
main = do
    inputS <- getLine
    let s = inputS
    let num = numberCopyOperation s
    let operCnt = length s - num + ((num > 0) ? 1 $ 0)
    putStrLn $ "operations count: " ++ (show operCnt) ++ result s num