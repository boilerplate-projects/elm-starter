module Main exposing (..)

import Navigation exposing (..)
import Model exposing (..)
import Update exposing (..)
import Message exposing (..)
import View exposing (..)
import Subscription exposing (..)
import Route


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Route.parseLocation location
    in
        ( Model.initialModel currentRoute, Cmd.none )


main : Program Never Model Msg
main =
    Navigation.program Message.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
