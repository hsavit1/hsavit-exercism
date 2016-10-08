module Bob (responseFor) where

import Data.Char (isLower, isSpace, isUpper)

responseFor :: String -> String
responseFor string = 
  | all isSpace string = "Fine. Be that way!"
  | any isUpper string && not (any isLower string) = "Whoa, chill out!"
  | last string == '?' = "Sure."
  | otherwise = "Whatever."