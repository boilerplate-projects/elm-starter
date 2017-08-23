module Message exposing (..)

import Navigation exposing (Location)
import RemoteData exposing (WebData)


-- Types

import Types.Player exposing (..)


-- Msg


type Msg
    = OnLocationChange Location
    | NewUrl String
    | OnFetchPlayers (WebData (List Player))
