module RNATranscription exposing (..)

-- G -> C
-- C -> G
-- T -> A
-- A -> U

import String
import List
import Result


transcribe : Char -> Char
transcribe char =
    case char of
        'G' ->
            'C'

        'C' ->
            'G'

        'T' ->
            'A'

        'A' ->
            'T'


toRNA : String -> Result String
toRNA dna =
    let
      result =
           String.filter (\c -> not <| String.contains (String.fromChar c) "GCTA") dna
          |> String.toList
          |> List.map (\c -> transcribe c)
          |> String.fromList
    in
      if result 
