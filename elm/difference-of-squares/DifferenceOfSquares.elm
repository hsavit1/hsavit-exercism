module DifferenceOfSquares exposing (..)


square : Int -> Int
square x =
    x ^ 2


range : Int -> List Int
range num =
    [1..num]



--------


squareOfSum : Int -> Int
squareOfSum num =
    num |> range >> List.sum >> square


sumOfSquares : Int -> Int
sumOfSquares num =
    num |> range >> List.map square >> List.sum


difference : Int -> Int
difference num =
    squareOfSum num - sumOfSquares num
