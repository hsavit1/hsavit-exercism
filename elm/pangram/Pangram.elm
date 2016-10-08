module Pangram exposing (..)

import String


alphabet : List String
alphabet =
    [ "a"
    , "b"
    , "c"
    , "d"
    , "e"
    , "f"
    , "g"
    , "h"
    , "i"
    , "j"
    , "k"
    , "l"
    , "m"
    , "n"
    , "o"
    , "p"
    , "q"
    , "r"
    , "s"
    , "t"
    , "u"
    , "v"
    , "w"
    , "x"
    , "y"
    , "z"
    ]


isPangram : String -> Bool
isPangram string =
    let
        boolList =
            List.map (\s -> String.contains s (String.toLower string)) alphabet
    in
        List.foldl (&&) (True) boolList
