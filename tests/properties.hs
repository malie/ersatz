module Main where

import Prelude hiding ((||),(&&))

import Test.Framework (Test)
import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
-- import Test.Framework.Providers.QuickCheck (testProperty)
-- import Test.HUnit hiding (Test)
-- import Test.QuickCheck hiding ((==>))

import Ersatz

main :: IO ()
main = defaultMain tests

ignore :: Functor f => f a -> f ()
ignore = fmap (const ())

tests :: [Test]
tests =
  [ testGroup "sat" $ zipWith (testCase . show) [1 :: Int ..] $
      [ -- showSAT (return ()) @?= "p cnf 0 0\n"
      -- , showSAT (ignore litExists) @?= "p cnf 1 0\n"
      -- , showSAT (ignore litForall) @?= "p cnf 2 0\na 1\n"
      -- , showSAT (do x <- forall; y <- exists; assertLits [x,y]) @?= "p cnf 2 1\na 1\ne 2\n1 2 0\n"
      ]
  ]

{-
currying_works :: SAT s ()
currying_works = do
  x <- forall
  y <- forall
  z <- forall
  assert $ (x && y) ==> z === x ==> y ==> z
-}
