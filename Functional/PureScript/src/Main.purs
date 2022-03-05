module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

greet :: String -> String
greet name = "Hello, " <> name <> "!"

main :: Effect Unit
main = do
  log (greet "World")
