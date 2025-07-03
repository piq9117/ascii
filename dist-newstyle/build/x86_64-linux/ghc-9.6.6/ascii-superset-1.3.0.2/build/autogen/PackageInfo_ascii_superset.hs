{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_superset (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_superset"
version :: Version
version = Version [1,3,0,2] []

synopsis :: String
synopsis = "Representing ASCII with refined supersets"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-superset"
