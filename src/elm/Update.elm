module Update exposing (..)

import Model exposing (Model)
import Message exposing (..)
import Route
import Navigation


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        NewUrl path ->
            ( model, Navigation.newUrl path )

        Message.OnLocationChange location ->
            let
                newRoute =
                    Route.parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        Message.OnFetchPlayers response ->
            ( { model | players = response }, Cmd.none )
