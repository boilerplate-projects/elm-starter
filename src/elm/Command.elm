module Command exposing (..)

import Http
import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)
import RemoteData
import Message exposing (Msg)
import Types.Player exposing (..)


fetchPlayersUrl : String
fetchPlayersUrl =
    "http://www.json-generator.com/api/json/get/bOIdZyKTsi?indent=2"


fetchPlayers : Cmd Msg
fetchPlayers =
    Http.get fetchPlayersUrl playersDecoder
        |> RemoteData.sendRequest
        |> Cmd.map Message.OnFetchPlayers


playersDecoder : Decode.Decoder (List Player)
playersDecoder =
    Decode.list playerDecoder


playerDecoder : Decode.Decoder Player
playerDecoder =
    decode Player
        |> required "id" Decode.string
        |> required "name" Decode.string
        |> required "picture" Decode.string
