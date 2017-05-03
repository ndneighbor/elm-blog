module Components.ArticleList exposing (view)
import Html exposing (Html, text, ul, li, div, h2)
import Html.Attributes exposing (class)
view : Html a
view =
  div [ class "article-list" ] 
  [ h2 [] [ text "Article List" ],
      ul [] renderArticles ]

renderArticles : List (Html a)
renderArticles = [ li [] [ text "Article 1" ]
        , li [] [ text "Article 2" ]
        , li [] [ text "Article 3" ] ] 