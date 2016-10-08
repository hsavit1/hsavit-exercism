module Anagram exposing (..)

import String


isAnagram : String -> String -> String
isAnagram string1 string2 =
    case (String.length string1) == (String.length string2) of
        False ->
            ""

        True ->
            let
                stringList1 =
                    String.toList (String.toLower string1)

                stringList2 =
                    String.toList (String.toLower string2)
            in
                if (List.sort stringList1) == (List.sort stringList2) then
                    string1
                else
                    ""


detect : String -> List String -> List String
detect string list =
    List.map (\s -> isAnagram s string) list
        |> List.filter (\s -> s /= "")
        |> List.filter (\w -> (String.toLower w) /= (String.toLower string))
