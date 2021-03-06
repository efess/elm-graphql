-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.SearchResultItemEdge exposing (cursor, node, selection, textMatches)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphql.Field as Field exposing (Field)
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.SearchResultItemEdge
selection constructor =
    Object.selection constructor


{-| A cursor for use in pagination.
-}
cursor : Field String Github.Object.SearchResultItemEdge
cursor =
    Object.fieldDecoder "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo Github.Union.SearchResultItem -> Field (Maybe decodesTo) Github.Object.SearchResultItemEdge
node object_ =
    Object.selectionField "node" [] object_ (identity >> Decode.nullable)


{-| Text matches on the result found.
-}
textMatches : SelectionSet decodesTo Github.Object.TextMatch -> Field (Maybe (List (Maybe decodesTo))) Github.Object.SearchResultItemEdge
textMatches object_ =
    Object.selectionField "textMatches" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)
