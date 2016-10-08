module Accumulate exposing (..)


accumulate : (a -> b) -> List a -> List b
accumulate f list =
    List.map f list
