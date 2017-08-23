module Pages.Player exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (Model)
import Message exposing (Msg)


view : Model -> String -> Html Msg
view model id =
    main_ [ class "page" ]
        [ text "Player - "
        , text ("Id " ++ id)
        ]
