module SumOfMultiples exposing (..)


calcFactor : List Int -> Int -> Bool
calcFactor factors n =
    factors |> List.any (\x -> n % x == 0)


sumOfMultiples : List Int -> Int -> Int
sumOfMultiples factors limit =
    [1..(limit - 1)]
        |> List.filter (calcFactor factors)
        |> List.sum
