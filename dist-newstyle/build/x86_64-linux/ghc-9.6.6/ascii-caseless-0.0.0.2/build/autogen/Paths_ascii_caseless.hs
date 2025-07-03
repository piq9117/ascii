{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
#if __GLASGOW_HASKELL__ >= 810
{-# OPTIONS_GHC -Wno-prepositive-qualified-module #-}
#endif
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module Paths_ascii_caseless (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where


import qualified Control.Exception as Exception
import qualified Data.List as List
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude


#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,0,0,2] []

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir `joinFileName` name)

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath




bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath
bindir     = "/home/piq9117/.cabal/bin"
libdir     = "/home/piq9117/.cabal/lib/x86_64-linux-ghc-9.6.6/ascii-caseless-0.0.0.2-inplace"
dynlibdir  = "/home/piq9117/.cabal/lib/x86_64-linux-ghc-9.6.6"
datadir    = "/home/piq9117/.cabal/share/x86_64-linux-ghc-9.6.6/ascii-caseless-0.0.0.2"
libexecdir = "/home/piq9117/.cabal/libexec/x86_64-linux-ghc-9.6.6/ascii-caseless-0.0.0.2"
sysconfdir = "/home/piq9117/.cabal/etc"

getBinDir     = catchIO (getEnv "ascii_caseless_bindir")     (\_ -> return bindir)
getLibDir     = catchIO (getEnv "ascii_caseless_libdir")     (\_ -> return libdir)
getDynLibDir  = catchIO (getEnv "ascii_caseless_dynlibdir")  (\_ -> return dynlibdir)
getDataDir    = catchIO (getEnv "ascii_caseless_datadir")    (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "ascii_caseless_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "ascii_caseless_sysconfdir") (\_ -> return sysconfdir)



joinFileName :: String -> String -> FilePath
joinFileName ""  fname = fname
joinFileName "." fname = fname
joinFileName dir ""    = dir
joinFileName dir fname
  | isPathSeparator (List.last dir) = dir ++ fname
  | otherwise                       = dir ++ pathSeparator : fname

pathSeparator :: Char
pathSeparator = '/'

isPathSeparator :: Char -> Bool
isPathSeparator c = c == '/'
