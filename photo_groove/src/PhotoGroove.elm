module PhotoGroove exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List

initialModel =
  { photos =
    [ { url = "1.jpeg" }
    , { url = "2.jpeg" }
    , { url = "3.jpeg" }
    ]
  , selectedUrl = "1.jpeg"
  , message = ""
  }

urlPrefix = "http://elm-in-action.com/"

view model =
  div [class "content" ]
  [ h1 [] [ text "Photo Groove" ]
  , div [id "thumbnails" ]
    ( List.map
      (viewThumbnail model.selectedUrl) -- Partial application of a function
      model.photos
    )
  , img
    [ class "large"
    , src (urlPrefix ++ "large/" ++ model.selectedUrl)
    ]
    []
  , div
    []
    [ text model.message ]
  ]

viewThumbnail selectedUrl thumb =
  img
  [ src (urlPrefix ++ thumb.url)
  {- describes a list of class attributs and the predicate on which it depends -}
  , classList [ ( "selected", selectedUrl == thumb.url ) ]
  {-
  describes what events to send when a certain html event occurs
  which in this case is on click
  -}
  , onClick { description = "ClickedPhoto", data = thumb.url }
  ]
  []

update msg model =
  if msg.description == "ClickedPhoto" then
    { model | selectedUrl = msg.data }
  else
    model

main =
  Browser.sandbox
    { init = initialModel
    , view = view
    , update = update
    }
