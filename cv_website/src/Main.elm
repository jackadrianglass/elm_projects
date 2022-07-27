module Main exposing (main)
import Browser
import Html exposing (Html, button, div, text, ul)
import Html.Events exposing (onClick)

zen_of_python =
  """
  Beautiful is better than ugly.
  Explicit is better than implicit.
  Simple is better than complex.
  Complex is better than complicated.
  Flat is better than nested.
  Sparse is better than dense.
  Readability counts.
  Special cases aren't special enough to break the rules.
  Although practicality beats purity.
  Errors should never pass silently.
  Unless explicitly silenced.
  In the face of ambiguity, refuse the temptation to guess.
  There should be one-- and preferably only one --obvious way to do it.
  Although that way may not be obvious at first unless you're Dutch.
  Now is better than never.
  Although never is often better than *right* now.
  If the implementation is hard to explain, it's a bad idea.
  If the implementation is easy to explain, it may be a good idea.
  Namespaces are one honking great idea -- let's do more of those!
  """

main =
  Browser.sandbox { init = 0, update = update, view = view }

update msg model =
  model

view model =
  div []
    [ div [] [ text zen_of_python ]
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
    
