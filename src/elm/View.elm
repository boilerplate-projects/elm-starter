module View exposing (..)

import Html exposing (..)
import Model exposing (Model)
import Message exposing (Msg)
import Route exposing (Route)
import Pages.Home
import Pages.Players
import Pages.Player
import Pages.NotFound
import Components.Header


page : Model -> Html Msg
page model =
    let
        _ =
            Debug.log "model" model
    in
        case model.route of
            Route.Home ->
                Pages.Home.view model

            Route.Players ->
                Pages.Players.view model

            Route.Player id ->
                Pages.Player.view model id

            Route.NotFound ->
                Pages.NotFound.view model


view : Model -> Html Msg
view model =
    div []
        [ Components.Header.view
        , page model
        ]
