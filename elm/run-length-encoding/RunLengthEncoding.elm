module RunLengthEncoding exposing (..)

import String


-- encode : String -> String
-- encode string =
--   String.toList string |> toChunk

toChunk : List Char -> List (Int, Char)
toChunk charList =
  List.foldl (\x,y -> if x == y then x :: y else y) [] charList


-- takeWhile : (a -> Bool) -> List a -> List a
-- takeWhile predicate xs =
--     case xs of
--         [] ->
--             []
--
--         hd :: tl ->
--             if (predicate hd) then
--                 hd :: takeWhile predicate tl
--             else
--                 []
