module Components.Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Message exposing (Msg)
import Route


view : Html Msg
view =
    header []
        [ a (Route.onClick "/")
            [ div [ class "logo" ] [ text "Elm starter" ]
            ]
        , nav []
            [ a (Route.onClick "/players") [ text "players" ]
            , a (Route.onClick "/players/1") [ text "players/1" ]
            ]
        ]
