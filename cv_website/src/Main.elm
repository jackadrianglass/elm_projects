module Main exposing (..)

import Css
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Utilities as Tw


ferris =
  Html.img
      [ Attr.src "../assets/cuddlyferris.png"
      , Attr.css
        [ Tw.h_auto
        , Tw.w_full
        , Tw.bg_white
        , Tw.rounded_full
        , Tw.border_black
        , Tw.border_4
        ]
      ] [ Html.text "Photo not found" ]

main =
  Html.toUnstyled <|
    Html.div
    [ Attr.css
      [ Tw.bg_blue_600
      , Tw.rounded_lg
      ]
    ]
    [ Html.div []
      [ ferris
      ]
    ]
    


{-
The Plan:
The idea is to largely base the website off of one that I found
[here](http://www.pascalvangemert.nl)

So the front page is an interactive resume that has the following layout
1. Hamburger menu for navigation into other pages (later)
2. Main photo for the landing of the website
  * Should occupy the whole screen
3. Have a brief on yourself
  * Basics i.e. name, age, location
  * A tl;dr about me
  * A photo
4. Work Experience
  * Super basic listing of what your work experience is
  * Super basic listing of what your schooling is
  * Maybe add a cool quote that you enjoy
5. Skill list
  * Have a list of skills in a 5 star ranking
  * Add some animations when hovering over the stars
  * Add tooltips to have an explanation for each skill and link projects if applicable
  * Include the following sections
    * Languages
    * Tools
    * Frameworks/Libraries
    * Paradigms and Philosophies
6. Projects
  * A list of side projects
  * Make sure that the complete ones come first
  * Tool tips for adding details about
    * Language used
    * Libraries used
    * Subject matter that it focuses on
    * Completion status
7. Contact information
  * email
  * linkedin
8. Have a sections navbar floating on the right
  * have it appear like a scroll bar
  * expands when hovering over it
  * Have smooth scrolling when navigating to various part of the resume
  * Have it expanded when at the top of the page
-}
    
