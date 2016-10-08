module Hamming exposing (..)

import String exposing (..)


filterChar : ( Char, Char ) -> Bool
filterChar ( a, b ) =
    if a == b then
        False
    else
        True


distance : String -> String -> Maybe Int
distance strand1 strand2 =
    let
        strand1Length =
            String.length strand1

        strand1List =
            String.toList strand1

        strand2List =
            String.toList strand2

        strand2Length =
            String.length strand2

        length =
            List.map2 (,) strand1List strand2List
                |> List.filter (filterChar)
                |> List.length
    in
        if ((strand1Length == 0) && (strand2Length == 0)) then
            Just 0
        else if strand1 == strand2 then
            Just 0
        else if strand1Length == strand2Length then
            case length of
                0 ->
                    Nothing

                _ ->
                    Just length
        else
            Nothing
