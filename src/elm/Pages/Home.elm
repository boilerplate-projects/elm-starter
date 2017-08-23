module Pages.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (Model)
import Message exposing (Msg)


view : Model -> Html Msg
view model =
    main_ []
        [ section [ class "container" ]
            [ h1 [] [ text "Welcome to Elm Starter" ]
            , p []
                [ text "A simple Webpack setup for writing "
                , a [ href "http://elm-lang.org/" ] [ text "Elm" ]
                , text " apps."
                ]
            , a [ class "button", href "https://github.com/dbeff/elm-starter", target "_blank" ]
                [ img [ class "icon", src "/static/img/github.svg" ] []
                , text "Github"
                ]
            ]
        ]
