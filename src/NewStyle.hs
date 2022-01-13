module NewStyle (squareCircle) where

import Control.Monad
import Graphics.WorldTurtle

sqrt_2 :: Float
sqrt_2 = sqrt 2

drawSquare :: Float -> TurtleCommand Float
drawSquare length = do 
  fd (length / 2)
  replicateM_ 4 $ lt 90 >> forward length
  return length

drawCircle :: Float -> TurtleCommand Float
drawCircle diameter = do 
  circle $ diameter / 2
  return diameter

nextStep :: Float -> TurtleCommand Float
nextStep length = do  
  lt 45
  return $ sqrt_2 * length

squareCircle :: Float -> TurtleCommand ()
squareCircle = drawCircle >=> drawSquare >=> nextStep >=> squareCircle