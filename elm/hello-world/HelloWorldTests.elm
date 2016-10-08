port module Main exposing (..)

import Test.Runner.Node exposing (run)
import Json.Encode exposing (Value)
import Test exposing (..)
import Expect
import HelloWorld exposing (helloWorld)
import Fuzz exposing (..)
import String exposing (..)


tests : Test
tests =
    describe "Hello, World!"
        [ test "Hello with no name" <|
            \() ->
                Expect.equal "Hello, World!" (helloWorld Nothing)
        , fuzz string "Hello with any name" <|
            \randomlyGeneratedString ->
                Expect.equal ("Hello, " ++ randomlyGeneratedString ++ "!") (helloWorld (Just randomlyGeneratedString))
        ]


main : Program Value
main =
    run emit tests


port emit : ( String, Value ) -> Cmd msg
