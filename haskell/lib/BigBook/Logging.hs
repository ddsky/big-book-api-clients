{-
   Big Book API

   The world's book wrapped into a single API.

   OpenAPI Version: 3.0.0
   Big Book API API version: 1.0
   Contact: mail@bigbookapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : BigBook.Logging
Logging functions
-}
{-# LANGUAGE CPP #-}

#ifdef USE_KATIP

module BigBook.Logging
  ( module BigBook.LoggingKatip
  ) where

import BigBook.LoggingKatip

#else

module BigBook.Logging
  ( module BigBook.LoggingMonadLogger
  ) where

import BigBook.LoggingMonadLogger

#endif
