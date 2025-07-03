{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii"
version :: Version
version = Version [1,7,0,2] []

synopsis :: String
synopsis = "The ASCII character set and encoding"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii"
