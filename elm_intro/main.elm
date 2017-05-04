module Greeting exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- Main

main : Html a
main =
    view model

--Model

model : String
model = 
    "World"

--View

view : String -> Html a
view person = 
    div []
     [ h2 [] [ text ("Todo List For: " ++ person) ]
     , ul []
       [ li [] [ text "Sample Todo Item" ]
       ]
     , input 
       [type_ "text"
       , placeholder "New Todo Item"
       ] []
     , button [] [ text "Add Item" ]
     ]


