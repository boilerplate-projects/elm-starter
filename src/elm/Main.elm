module Main exposing (..)

import Navigation exposing (Location)
import Model exposing (Model)
import Update exposing (update)
import Message exposing (..)
import View exposing (..)
import Route


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Route.parseLocation location
    in
        ( Model.initialModel currentRoute, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Navigation.program Message.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
