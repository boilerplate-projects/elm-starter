module Pages.Players exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import RemoteData exposing (WebData)
import Model exposing (Model)
import Message exposing (Msg)
import Types.Player exposing (..)


renderPlayers : WebData (List Player) -> Html Msg
renderPlayers response =
    case response of
        RemoteData.NotAsked ->
            text ""

        RemoteData.Loading ->
            text "Loading..."

        RemoteData.Success players ->
            list players

        -- list players
        RemoteData.Failure error ->
            text (toString error)


list : List Player -> Html Msg
list players =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ th [] [ text "Picture" ]
                    , th [] [ text "Id" ]
                    , th [] [ text "Name" ]
                    ]
                ]
            , tbody [] (List.map playerRow players)
            ]
        ]


playerRow : Player -> Html Msg
playerRow player =
    tr []
        [ td [] [ img [ src player.picture ] [] ]
        , td [] [ text player.id ]
        , td [] [ text player.name ]
        ]


view : Model -> Html Msg
view model =
    main_ [ class "page" ]
        [ renderPlayers model.players
        ]
