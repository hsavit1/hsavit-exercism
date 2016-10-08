module Sublist exposing (..)

import String


type ListComparison
    = Equal
    | Unequal
    | Sublist
    | Superlist


version : Int
version =
    2


convert : String -> String -> String
convert a b =
    String.append a b


stringList : List Int -> String
stringList list =
    List.map (\i -> toString i) list
        |> List.foldr convert ""


sublist : List Int -> List Int -> ListComparison
sublist list1 list2 =
    let
        stringList1 =
            stringList list1

        stringList2 =
            stringList list2
    in
        if stringList1 == stringList2 then
            Equal
        else if String.contains stringList1 stringList2 then
            Sublist
        else if String.contains stringList2 stringList1 then
            Superlist
        else
            Unequal
