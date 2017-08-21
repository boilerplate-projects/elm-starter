module Message exposing (..)

import Navigation exposing (Location)


type Msg
    = OnLocationChange Location
    | NewUrl String
