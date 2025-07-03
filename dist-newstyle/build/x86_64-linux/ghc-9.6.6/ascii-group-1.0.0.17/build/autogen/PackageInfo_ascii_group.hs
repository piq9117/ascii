{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_group (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_group"
version :: Version
version = Version [1,0,0,17] []

synopsis :: String
synopsis = "ASCII character groups"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-group"
