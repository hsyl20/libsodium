{-# LANGUAGE ForeignFunctionInterface #-}
module Main where

import Foreign.C.String

foreign import ccall unsafe sodium_version_string :: IO CString

main :: IO ()
main = do
  v <- peekCString =<< sodium_version_string
  putStrLn v
