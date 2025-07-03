{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_predicates (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_predicates"
version :: Version
version = Version [1,0,1,4] []

synopsis :: String
synopsis = "Various categorizations of ASCII characters"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-predicates"
