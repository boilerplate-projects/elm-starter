module Update exposing (..)

import Model exposing (Model)
import Message exposing (..)
import Route exposing (..)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        Message.OnLocationChange location ->
            let
                newRoute =
                    Route.parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
