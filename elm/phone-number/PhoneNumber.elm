module PhoneNumber exposing (..)

import String exposing (..)
import Regex exposing (..)
import Array exposing (..)


punctuation : Regex
punctuation =
    regex "[!@#$%^&*():;\"',.]+"


getNumber : String -> Maybe String
getNumber string =
    if ((String.length string) == 10) then
        case string |> toLower |> replace Regex.All punctuation (\_ -> "") of
            "" ->
                Nothing

            s ->
                Just s
    else
        Nothing


concatList : String -> String -> String
concatList string1 string2 =
    string1 ++ string2


prettyPrint : String -> String
prettyPrint phoneString =
    String.toList phoneString
        |> Array.fromList
        |> Array.set 0 "("
        |> Array.set 4 ")"
        |> Array.toList
        |> List.foldl (concatList a b) ""
