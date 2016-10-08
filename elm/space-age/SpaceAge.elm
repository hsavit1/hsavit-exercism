module SpaceAge exposing (..)


type Planet
    = Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune


ageOnEarth : Float -> Float
ageOnEarth input =
    input / 31557600.0


ageOn : Planet -> Float -> Float
ageOn planet seconds =
    case planet of
        Mercury ->
            ageOnEarth seconds / 0.2408467

        Venus ->
            ageOnEarth seconds / 0.61519726

        Earth ->
            ageOnEarth seconds

        Mars ->
            ageOnEarth seconds / 1.8808158

        Jupiter ->
            ageOnEarth seconds / 11.862615

        Saturn ->
            ageOnEarth seconds / 29.447498

        Neptune ->
            ageOnEarth seconds / 84.016846

        Uranus ->
            ageOnEarth seconds / 164.79132
