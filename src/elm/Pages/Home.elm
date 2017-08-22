module Pages.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (Model)
import Message exposing (Msg)
import Route


view : Model -> Html Msg
view model =
    div [ class "page" ]
        [ text "Home"
        , br [] []
        , a (Route.onClick "players") [ text "players" ]
        , br [] []
        , a (Route.onClick "players/1") [ text "players/1" ]
        ]
