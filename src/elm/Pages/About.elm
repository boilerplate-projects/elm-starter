module Pages.About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (Model)
import Message exposing (Msg)


view : Model -> Html Msg
view model =
    div [ class "page" ]
        [ text "About"
        ]
