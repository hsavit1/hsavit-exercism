module Raindrops exposing (..)

import String exposing (..)


-- rainFactors : Int -> Maybe Int
-- rainFactors n =
--     filter (\x -> 0 == n rem x) [ 3, 5, 7 ]
--
--
-- noises : Int -> String
-- noises n =
--     case n of
--         3 ->
--             "Pling"
--
--         5 ->
--             "Plang"
--
--         7 ->
--             "Plong"
--
--         _ ->
--             "Error"
--
--
-- rainDrops : Int -> String
-- rainDrops n =
--     case rainFactors n of
--         [] ->
--             toString n
--
--         f ->
--             concat (map noises f)


raindrops : Int -> String
raindrops x =
    let
        drops =
            [ ( 3, "Pling" ), ( 5, "Plang" ), ( 7, "Plong" ) ]
    in
        List.foldr
            (\( a, b ) acc ->
                if x % a == 0 then
                    b :: acc
                else
                    acc
            )
            []
            drops
            |> (\xs ->
                    if List.isEmpty xs then
                        toString x
                    else
                        String.concat xs
               )
