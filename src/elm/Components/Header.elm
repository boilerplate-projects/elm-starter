module Components.Header exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Message exposing (Msg)
import Route


view : Html Msg
view =
    header []
        [ a (Route.onClick "/")
            [ div [ class "logo" ]
                [ img [ src "/static/img/elm.svg" ] []
                , text "Elm starter"
                ]
            ]
        , nav []
            [ a (Route.onClick "/players") [ text "players" ]
            ]
        ]
