module PhotoGroove exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import List

initialModel =
  { photos =
    [ { url = "1.jpeg" }
    , { url = "2.jpeg" }
    , { url = "3.jpeg" }
    ]
  , selectedUrl = "1.jpeg"
  }

urlPrefix = "http://elm-in-action.com/"

view model =
  div [class "content" ]
  [ h1 [] [ text "Photo Groove" ]
  , div [id "thumbnails" ]
    ( List.map
      (\photo -> viewThumbnail model.selectedUrl photo)
      model.photos
    )
  ]

viewThumbnail selectedUrl thumb =
  if selectedUrl == thumb.url then
    img
      [ src (urlPrefix ++ thumb.url)
      , class "selected"
      ]
      []
  else
    img
      [ src (urlPrefix ++ thumb.url) ]
      []

main = view initialModel
