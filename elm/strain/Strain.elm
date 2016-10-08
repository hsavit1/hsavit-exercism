module Strain exposing (..)

{-|
  Implement the `keep` and `discard` operation on collections.
  Given a collection and a predicate on the collection's elements, `keep` returns a new collection containing
  those elements where the predicate is true, while `discard` returns a new collection containing those
  elements where the predicate is false.
-}

-- aka takeWhile and dropWhile


keep : (a -> Bool) -> List a -> List a
keep f =
    List.foldr
        (\x y ->
            if f x then
                x :: y
            else
                y
        )
        []


discard : (a -> Bool) -> List a -> List a
discard f =
    List.foldr
        (\x y ->
            if f x then
                y
            else
                x :: y
        )
        []
