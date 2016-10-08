module Triangle exposing (..)

{-|
Write a program that can tell you if a triangle is equilateral, isosceles, or scalene.

The program should raise an error if the triangle cannot exist.
-}


triangleKind : number -> number -> number -> Result String String
triangleKind a b c =
    case List.sort [ a, b, c ] of
        [ a, b, c ] ->
            if a <= 0 then
                Err "Invalid lengths"
            else if a + b <= c then
                Err "Violates inequality"
            else if a == c then
                Ok "equilateral"
            else if a == b || b == c then
                Ok "isosceles"
            else
                Ok "scalene"

        _ ->
            Err "idek"
