module NewStyle (squareCircle) where

import Control.Monad
import Graphics.WorldTurtle

sqrt_2 :: Float
sqrt_2 = sqrt 2

drawSquare :: Float -> TurtleCommand Float
drawSquare length = do 
  fd (length / 2)
  replicateM_ 4 $ lt 90 >> forward length
  lt 45 
  return length

drawCircle :: Float -> TurtleCommand Float
drawCircle diameter = do 
  circle $ diameter / 2
  return diameter

squareCircle :: Float -> TurtleCommand ()
squareCircle = drawCircle >=> drawSquare >=> squareCircle . (sqrt_2 *)