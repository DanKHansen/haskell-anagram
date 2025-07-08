module Anagram (anagramsFor) where

import Data.Char (toLower)
import Data.List (sort)

anagramsFor :: String -> [String] -> [String]
anagramsFor xs = filter (\c -> (sort (map toLower c) == sort (map toLower xs)) && not (equalsIgnoreCase xs c))

equalsIgnoreCase :: String -> String -> Bool
equalsIgnoreCase s1 s2 = map toLower s1 == map toLower s2