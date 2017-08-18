module View exposing (..)

import Html exposing (..)
import Model exposing (Model)
import Message exposing (Msg)
import Route exposing (Route)
import Pages.Home
import Pages.About
import Pages.NotFound


page : Model -> Html Msg
page model =
    case model.route of
        Route.Home ->
            Pages.Home.view model

        Route.About ->
            Pages.About.view model

        Route.NotFound ->
            Pages.NotFound.view model


view : Model -> Html Msg
view model =
    div []
        [ page model ]
