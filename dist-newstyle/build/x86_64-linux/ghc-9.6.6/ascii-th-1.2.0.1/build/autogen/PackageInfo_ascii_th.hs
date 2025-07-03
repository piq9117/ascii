{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_th (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_th"
version :: Version
version = Version [1,2,0,1] []

synopsis :: String
synopsis = "Template Haskell support for ASCII"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-th"
