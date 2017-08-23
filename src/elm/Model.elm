module Model exposing (..)

import RemoteData exposing (WebData)
import Route exposing (Route)
import Types.Player exposing (..)


-- Model


type alias Model =
    { route : Route
    , players : WebData (List Player)
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    , players = RemoteData.Loading
    }



-- Types
