module Main where

import Graphics.WorldTurtle (runTurtle)
import qualified NewStyle (squareCircle) 
import qualified RegularStyle (squareCircle)
import qualified OddStyle (squareCircle)

main :: IO ()
main = runTurtle $ NewStyle.squareCircle 30
