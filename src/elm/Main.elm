module Main exposing (..)

import Navigation exposing (..)
import Model exposing (..)
import Update exposing (..)
import Message exposing (..)
import View exposing (..)
import Subscription exposing (..)
import Route
import Command


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Route.parseLocation location
    in
        ( Model.initialModel currentRoute, Command.fetchPlayers )


main : Program Never Model Msg
main =
    Navigation.program Message.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
