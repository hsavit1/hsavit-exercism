module WordCount exposing (..)

import String exposing (..)
import List
import Regex exposing (..)
import Dict exposing (..)


punctuation : Regex
punctuation =
    regex "[!@#$%^&*():;\"',.]+"


inc : Maybe Int -> Maybe Int
inc =
    Maybe.withDefault 0 >> (+) 1 >> Just


words : String -> List String
words string =
    string
        |> toLower
        |> replace Regex.All punctuation (\_ -> "")
        |> String.words


wordCount : String -> Dict String Int
wordCount string =
    words string
        |> List.foldl (\word acc -> update word inc acc) Dict.empty
