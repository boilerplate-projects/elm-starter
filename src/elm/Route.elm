module Route exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (href)
import Html.Events exposing (..)
import Navigation exposing (Location)
import UrlParser exposing (..)
import Json.Decode
import Message exposing (Msg)


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
    -- Change 'parsePath' to 'parseHash' to use hash
    case (parsePath matchers location) of
        Just route ->
            route

        Nothing ->
            NotFound


onClick : String -> List (Attribute Msg)
onClick path =
    [ href path
    , onWithOptions "click"
        { stopPropagation = True
        , preventDefault = True
        }
        (Json.Decode.succeed (Message.NewUrl path))
    ]
