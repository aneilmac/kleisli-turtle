module RegularStyle (squareCircle) where

import Control.Monad
import Graphics.WorldTurtle

sqrt_2 :: Float
sqrt_2 = sqrt 2

drawSquare :: Float -> TurtleCommand ()
drawSquare length = do 
  fd (length / 2)
  replicateM_ 4 $ lt 90 >> forward length

squareCircle :: Float -> TurtleCommand ()
squareCircle length = do 
  circle $ length /2
  drawSquare length
  lt 45
  squareCircle $ (sqrt_2 * length)
