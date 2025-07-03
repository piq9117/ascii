{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_ascii_char (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "ascii_char"
version :: Version
version = Version [1,0,1,0] []

synopsis :: String
synopsis = "A Char type representing an ASCII character"
copyright :: String
copyright = ""
homepage :: String
homepage = "https://github.com/typeclasses/ascii-char"
