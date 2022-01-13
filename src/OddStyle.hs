module OddStyle (squareCircle) where

import Control.Monad
import Graphics.WorldTurtle

sqrt_2 :: Float
sqrt_2 = sqrt 2

drawSquare :: Float -> TurtleCommand ()
drawSquare length = do 
  fd (length / 2)
  replicateM_ 4 $ lt 90 >> forward length

-- A demonstration that commands are data, and can be treated as such.
squareCircle :: Float -> TurtleCommand ()
squareCircle length = forM_ 
                    [ circle . (/2)
                    , drawSquare
                    , const (lt 45)
                    , squareCircle . (sqrt_2 *)
                    ] ($ length)
