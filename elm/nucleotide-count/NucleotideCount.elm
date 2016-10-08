module NucleotideCount exposing (..)

import String


version : Int
version =
    2


type alias Nucleotide =
    { a : Int
    , t : Int
    , c : Int
    , g : Int
    }


nucleotideCounts : String -> Nucleotide
nucleotideCounts string =
    let
        init : Nucleotide
        init =
            { a = String.toList string |> List.sort |> List.filter (\a -> a == 'A') |> List.length
            , t = String.toList string |> List.sort |> List.filter (\t -> t == 'T') |> List.length
            , c = String.toList string |> List.sort |> List.filter (\c -> c == 'C') |> List.length
            , g = String.toList string |> List.sort |> List.filter (\g -> g == 'G') |> List.length
            }
    in
        init
