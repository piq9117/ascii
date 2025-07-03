{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_numbers (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_numbers"
version :: Version
version = Version [1,2,0,2] []

synopsis :: String
synopsis = "ASCII representations of numbers"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-numbers"
