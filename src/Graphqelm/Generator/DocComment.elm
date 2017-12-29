module Graphqelm.Generator.DocComment exposing (generate)

import Graphqelm.Parser.Type as Type exposing (Field, ReferrableType, TypeReference)
import Interpolate exposing (interpolate)


generate : Field -> String
generate { description, args } =
    case description of
        Just actualDescription ->
            interpolate """{-| {0}{1}
-}
"""
                [ actualDescription, argsDoc args ]

        Nothing ->
            ""


argsDoc : List Type.Arg -> String
argsDoc args =
    case args of
        [] ->
            ""

        _ ->
            interpolate "\n\n{0}\n" [ "  - id - The human's id." ]


argDoc : Type.Arg -> String
argDoc { description } =
    ""
