module Route exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = Home
    | About
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map Home top
        , map About (s "about")
        ]


parseLocation : Location -> Route
parseLocation location =
    case (parseHash matchers location) of
        Just route ->
            route

        Nothing ->
            NotFound
