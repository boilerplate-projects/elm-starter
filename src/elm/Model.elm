module Model exposing (..)

import Route exposing (Route)


-- MODEL


type alias Model =
    { route : Route
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    }
