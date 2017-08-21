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
        , a (Route.onClick "about") [ text "about" ]
        ]
