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



-- Change parsePath to parseHash to use hash


parseLocation : Location -> Route
parseLocation location =
    case (parsePath matchers location) of
        Just route ->
            route

        Nothing ->
            NotFound
