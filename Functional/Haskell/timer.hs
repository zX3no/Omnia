countdown :: Integer -> ()
countdown t = do
  let secs = mod t 60
  let _ = print secs
  countdown (t)

main = do
  putStrLn "Enter a time in seconds:"
  s <- getLine
  let t = read s :: Integer
  let _ = countdown (t)

  putStr ""
