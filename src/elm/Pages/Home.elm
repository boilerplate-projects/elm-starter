module Pages.Home exposing (..)

import Html exposing (..)
import Model exposing (Model)
import Message exposing (Msg)


view : Model -> Html Msg
view model =
    main_ [] [ text "Home" ]
