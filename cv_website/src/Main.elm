module Main exposing (main)

import Element exposing (..)
import Element.Background as Background
import Element.Font as Font


fillerParagraph : String
fillerParagraph =
    "Lorem ipsum odor amet, consectetuer adipiscing elit. Augue quam cubilia class varius morbi luctus faucibus. Pharetra nisi phasellus duis maximus ex vel sed quis aptent. Sagittis elementum gravida libero aptent dui consequat efficitur per imperdiet. Pharetra auctor mus suspendisse turpis, sem ad ad. Fusce iaculis placerat libero risus ac class potenti integer. Turpis dignissim purus efficitur habitant ad quam placerat. Nascetur nec cubilia hac himenaeos curabitur mi. Bibendum rutrum blandit neque ligula primis dictum dignissim pellentesque!"



-- todo: Get the light version as well https://rosepinetheme.com/palette/ingredients/


theme =
    { base = rgb255 25 23 36
    , surface = rgb255 31 29 46
    , overlay = rgb255 38 35 58
    , muted = rgb255 110 106 134
    , subtle = rgb255 144 140 170
    , text = rgb255 224 222 244
    , love = rgb255 235 111 146
    , gold = rgb255 246 193 119
    , rose = rgb255 235 188 186
    , pine = rgb255 49 116 143
    , foam = rgb255 156 207 216
    , iris = rgb255 196 167 231
    , highlightLow = rgb255 33 32 46
    , highlightMed = rgb255 64 61 82
    , highlightHigh = rgb255 82 79 103
    }


main =
    layout
        -- todo: This is where you put your style options
        -- see what else you can do with this
        [ Font.color theme.text
        , Font.size 18
        , Font.family
            [ Font.typeface "Open Sans"
            , Font.sansSerif
            ]
        , Background.color theme.base
        ]
    <|
        -- todo: have a title bar somewhere here
        -- todo: have a splash screen with your link tree
        row []
            [ el [ width <| fillPortion 1 ] none
            , content
            , el [ width <| fillPortion 1 ] none
            ]


content : Element a
content =
    textColumn
        [ width <| fillPortion 5
        , height fill
        , spacing 10
        , paddingXY 100 0
        ]
    <|
        List.repeat
            20
            (paragraph [] [ text fillerParagraph ])
