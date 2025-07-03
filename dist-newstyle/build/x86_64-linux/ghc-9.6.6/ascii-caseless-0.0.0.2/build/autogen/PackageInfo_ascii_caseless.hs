{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_caseless (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_caseless"
version :: Version
version = Version [0,0,0,2] []

synopsis :: String
synopsis = "ASCII character without an upper/lower case distinction"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-caseless"
