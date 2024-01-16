{-
   Big Book API

   The world's book wrapped into a single API.

   OpenAPI Version: 3.0.0
   Big Book API API version: 1.0
   Contact: mail@bigbookapi.com
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : BigBook.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module BigBook.Model where

import BigBook.Core
import BigBook.MimeTypes

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Control.Arrow as P (left)
import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as B64
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Time as TI
import qualified Lens.Micro as L
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Data.Function ((&))
import Data.Monoid ((<>))
import Data.Text (Text)
import Prelude (($),(/=),(.),(<$>),(<*>),(>>=),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)

import qualified Prelude as P



-- * Parameter newtypes


-- ** Authors
newtype Authors = Authors { unAuthors :: Text } deriving (P.Eq, P.Show)

-- ** EarliestPublishYear
newtype EarliestPublishYear = EarliestPublishYear { unEarliestPublishYear :: Double } deriving (P.Eq, P.Show)

-- ** Genres
newtype Genres = Genres { unGenres :: Text } deriving (P.Eq, P.Show)

-- ** Id
newtype Id = Id { unId :: Double } deriving (P.Eq, P.Show)

-- ** Isbn
newtype Isbn = Isbn { unIsbn :: Text } deriving (P.Eq, P.Show)

-- ** LatestPublishYear
newtype LatestPublishYear = LatestPublishYear { unLatestPublishYear :: Double } deriving (P.Eq, P.Show)

-- ** MaxRating
newtype MaxRating = MaxRating { unMaxRating :: Double } deriving (P.Eq, P.Show)

-- ** MinRating
newtype MinRating = MinRating { unMinRating :: Double } deriving (P.Eq, P.Show)

-- ** Name
newtype Name = Name { unName :: Text } deriving (P.Eq, P.Show)

-- ** Number
newtype Number = Number { unNumber :: Double } deriving (P.Eq, P.Show)

-- ** Oclc
newtype Oclc = Oclc { unOclc :: Text } deriving (P.Eq, P.Show)

-- ** Offset
newtype Offset = Offset { unOffset :: Double } deriving (P.Eq, P.Show)

-- ** Query
newtype Query = Query { unQuery :: Text } deriving (P.Eq, P.Show)

-- ** Sort
newtype Sort = Sort { unSort :: Text } deriving (P.Eq, P.Show)

-- ** SortDirection
newtype SortDirection = SortDirection { unSortDirection :: Text } deriving (P.Eq, P.Show)

-- * Models





-- * Auth Methods

-- ** AuthApiKeyApiKey
data AuthApiKeyApiKey =
  AuthApiKeyApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyApiKey where
  applyAuthMethod _ a@(AuthApiKeyApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setQuery` toQuery ("api-key", Just secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req

-- ** AuthApiKeyHeaderApiKey
data AuthApiKeyHeaderApiKey =
  AuthApiKeyHeaderApiKey Text -- ^ secret
  deriving (P.Eq, P.Show, P.Typeable)

instance AuthMethod AuthApiKeyHeaderApiKey where
  applyAuthMethod _ a@(AuthApiKeyHeaderApiKey secret) req =
    P.pure $
    if (P.typeOf a `P.elem` rAuthTypes req)
      then req `setHeader` toHeader ("x-api-key", secret)
           & L.over rAuthTypesL (P.filter (/= P.typeOf a))
      else req


