{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_case (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_case"
version :: Version
version = Version [1,0,1,4] []

synopsis :: String
synopsis = "ASCII letter case"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-case"
