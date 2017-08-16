module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


-- component import example

import Components.Hello exposing (hello)


-- APP


main : Program Never Int Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    Int


model : number
model =
    0



-- UPDATE


type Msg
    = NoOp
    | Increment


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        Increment ->
            model + 1



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "container", style styles.container ]
        [ div [ class "row" ]
            [ img [ src "static/img/elm.svg", style styles.img ] []
            , hello model -- ext 'hello' component (takes 'model' as arg)
            , p [] [ text ("Elm starter") ]
            , button [ class "btn btn-primary btn-lg", onClick Increment ]
                [ span [] [ text "Click me!" ] ]
            ]
        ]



-- CSS STYLES


styles : { container : List ( String, String ), img : List ( String, String ) }
styles =
    { container =
        [ ( "margin-top", "30px" )
        , ( "text-align", "center" )
        ]
    , img =
        [ ( "width", "100px" )
        , ( "display", "block" )
        , ( "margin", "20px auto" )
        ]
    }
