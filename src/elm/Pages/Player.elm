module Pages.Player exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import RemoteData exposing (WebData)
import Model exposing (Model)
import Message exposing (Msg)
import Types.Player exposing (..)
import List.Extra
import Route


maybePlayers : String -> WebData (List Player) -> Html Msg
maybePlayers id response =
    case response of
        RemoteData.NotAsked ->
            text ""

        RemoteData.Loading ->
            text "Loading..."

        RemoteData.Success players ->
            let
                maybePlayer =
                    List.Extra.find (\player -> player.id == id) players

                player =
                    case maybePlayer of
                        Just player ->
                            renderPlayer player

                        Nothing ->
                            text "Player not found"
            in
                player

        RemoteData.Failure error ->
            text (toString error)


renderPlayer : Player -> Html Msg
renderPlayer player =
    div [ class "item" ]
        [ a (Route.onClick ("/players/" ++ player.id))
            [ div [ class "wrapper" ]
                [ div [ class "picture" ] [ img [ src player.picture ] [] ]
                , div [ class "info" ]
                    [ div [ class "name" ] [ text player.name ]
                    , div [ class "id" ] [ text player.id ]
                    ]
                ]
            ]
        ]


view : Model -> String -> Html Msg
view model id =
    div [ class "players" ]
        [ maybePlayers id model.players
        ]
