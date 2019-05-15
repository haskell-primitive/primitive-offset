{-# language DuplicateRecordFields #-}
module Data.Primitive.ByteArray.Offset
  ( -- * Types
    ByteArrayOffset(..)
  , MutableByteArrayOffset(..)
  ) where

import Control.Monad.Primitive (PrimMonad,PrimState)
import Data.Primitive (ByteArray,MutableByteArray)

-- | A byte array and an index into the array. The element
-- type is understood to be byte (an 8-bit word).
data ByteArrayOffset = ByteArrayOffset
  { array :: {-# UNPACK #-} !ByteArray
  , index :: {-# UNPACK #-} !Int
  }

-- | A mutable byte array and an index into the array. The element
-- type is understood to be byte (an 8-bit word).
data MutableByteArrayOffset s = MutableByteArrayOffset
  { array :: {-# UNPACK #-} !(MutableByteArray s)
  , index :: {-# UNPACK #-} !Int
  }
