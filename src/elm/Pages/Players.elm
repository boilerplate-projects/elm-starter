module Pages.Players exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import RemoteData exposing (WebData)
import Model exposing (Model)
import Message exposing (Msg)
import Route
import Types.Player exposing (..)


maybePlayers : WebData (List Player) -> Html Msg
maybePlayers response =
    case response of
        RemoteData.NotAsked ->
            text ""

        RemoteData.Loading ->
            text "Loading..."

        RemoteData.Success players ->
            renderPlayers players

        RemoteData.Failure error ->
            text (toString error)


renderPlayers : List Player -> Html Msg
renderPlayers players =
    div [ class "players" ] (List.map renderPlayer players)


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


view : Model -> Html Msg
view model =
    main_ [ class "page" ]
        [ maybePlayers model.players
        ]
