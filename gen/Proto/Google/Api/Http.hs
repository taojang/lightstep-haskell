{- This file was auto-generated from google/api/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Google.Api.Http (
        CustomHttpPattern(), Http(), HttpRule(), HttpRule'Pattern(..),
        _HttpRule'Get, _HttpRule'Put, _HttpRule'Post, _HttpRule'Delete,
        _HttpRule'Patch, _HttpRule'Custom
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
{- | Fields :
     
         * 'Proto.Google.Api.Http_Fields.kind' @:: Lens' CustomHttpPattern Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.path' @:: Lens' CustomHttpPattern Data.Text.Text@ -}
data CustomHttpPattern
  = CustomHttpPattern'_constructor {_CustomHttpPattern'kind :: !Data.Text.Text,
                                    _CustomHttpPattern'path :: !Data.Text.Text,
                                    _CustomHttpPattern'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomHttpPattern where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CustomHttpPattern "kind" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomHttpPattern'kind
           (\ x__ y__ -> x__ {_CustomHttpPattern'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomHttpPattern "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomHttpPattern'path
           (\ x__ y__ -> x__ {_CustomHttpPattern'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message CustomHttpPattern where
  messageName _ = Data.Text.pack "google.api.CustomHttpPattern"
  packedMessageDescriptor _
    = "\n\
      \\DC1CustomHttpPattern\DC2\DC2\n\
      \\EOTkind\CAN\SOH \SOH(\tR\EOTkind\DC2\DC2\n\
      \\EOTpath\CAN\STX \SOH(\tR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        kind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kind"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"kind")) ::
              Data.ProtoLens.FieldDescriptor CustomHttpPattern
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor CustomHttpPattern
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, kind__field_descriptor),
           (Data.ProtoLens.Tag 2, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomHttpPattern'_unknownFields
        (\ x__ y__ -> x__ {_CustomHttpPattern'_unknownFields = y__})
  defMessage
    = CustomHttpPattern'_constructor
        {_CustomHttpPattern'kind = Data.ProtoLens.fieldDefault,
         _CustomHttpPattern'path = Data.ProtoLens.fieldDefault,
         _CustomHttpPattern'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CustomHttpPattern
          -> Data.ProtoLens.Encoding.Bytes.Parser CustomHttpPattern
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "kind"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kind") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CustomHttpPattern"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"kind") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData CustomHttpPattern where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomHttpPattern'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CustomHttpPattern'kind x__)
                (Control.DeepSeq.deepseq (_CustomHttpPattern'path x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Http_Fields.rules' @:: Lens' Http [HttpRule]@
         * 'Proto.Google.Api.Http_Fields.vec'rules' @:: Lens' Http (Data.Vector.Vector HttpRule)@ -}
data Http
  = Http'_constructor {_Http'rules :: !(Data.Vector.Vector HttpRule),
                       _Http'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Http "rules" [HttpRule] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http'rules (\ x__ y__ -> x__ {_Http'rules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Http "vec'rules" (Data.Vector.Vector HttpRule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http'rules (\ x__ y__ -> x__ {_Http'rules = y__}))
        Prelude.id
instance Data.ProtoLens.Message Http where
  messageName _ = Data.Text.pack "google.api.Http"
  packedMessageDescriptor _
    = "\n\
      \\EOTHttp\DC2*\n\
      \\ENQrules\CAN\SOH \ETX(\v2\DC4.google.api.HttpRuleR\ENQrules"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpRule)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"rules")) ::
              Data.ProtoLens.FieldDescriptor Http
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, rules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http'_unknownFields
        (\ x__ y__ -> x__ {_Http'_unknownFields = y__})
  defMessage
    = Http'_constructor
        {_Http'rules = Data.Vector.Generic.empty,
         _Http'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpRule
             -> Data.ProtoLens.Encoding.Bytes.Parser Http
        loop x mutable'rules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'rules)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'rules") frozen'rules x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'rules y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'rules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'rules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'rules)
          "Http"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rules") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Http where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Http'rules x__) ())
{- | Fields :
     
         * 'Proto.Google.Api.Http_Fields.selector' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.body' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.additionalBindings' @:: Lens' HttpRule [HttpRule]@
         * 'Proto.Google.Api.Http_Fields.vec'additionalBindings' @:: Lens' HttpRule (Data.Vector.Vector HttpRule)@
         * 'Proto.Google.Api.Http_Fields.maybe'pattern'' @:: Lens' HttpRule (Prelude.Maybe HttpRule'Pattern)@
         * 'Proto.Google.Api.Http_Fields.maybe'get' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Http_Fields.get' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.maybe'put' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Http_Fields.put' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.maybe'post' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Http_Fields.post' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.maybe'delete' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Http_Fields.delete' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.maybe'patch' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Http_Fields.patch' @:: Lens' HttpRule Data.Text.Text@
         * 'Proto.Google.Api.Http_Fields.maybe'custom' @:: Lens' HttpRule (Prelude.Maybe CustomHttpPattern)@
         * 'Proto.Google.Api.Http_Fields.custom' @:: Lens' HttpRule CustomHttpPattern@ -}
data HttpRule
  = HttpRule'_constructor {_HttpRule'selector :: !Data.Text.Text,
                           _HttpRule'body :: !Data.Text.Text,
                           _HttpRule'additionalBindings :: !(Data.Vector.Vector HttpRule),
                           _HttpRule'pattern' :: !(Prelude.Maybe HttpRule'Pattern),
                           _HttpRule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpRule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpRule'Pattern
  = HttpRule'Get !Data.Text.Text |
    HttpRule'Put !Data.Text.Text |
    HttpRule'Post !Data.Text.Text |
    HttpRule'Delete !Data.Text.Text |
    HttpRule'Patch !Data.Text.Text |
    HttpRule'Custom !CustomHttpPattern
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpRule "selector" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'selector (\ x__ y__ -> x__ {_HttpRule'selector = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpRule "body" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'body (\ x__ y__ -> x__ {_HttpRule'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpRule "additionalBindings" [HttpRule] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'additionalBindings
           (\ x__ y__ -> x__ {_HttpRule'additionalBindings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpRule "vec'additionalBindings" (Data.Vector.Vector HttpRule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'additionalBindings
           (\ x__ y__ -> x__ {_HttpRule'additionalBindings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpRule "maybe'pattern'" (Prelude.Maybe HttpRule'Pattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpRule "maybe'get" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpRule'Get x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpRule'Get y__))
instance Data.ProtoLens.Field.HasField HttpRule "get" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpRule'Get x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpRule'Get y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpRule "maybe'put" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpRule'Put x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpRule'Put y__))
instance Data.ProtoLens.Field.HasField HttpRule "put" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpRule'Put x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpRule'Put y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpRule "maybe'post" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpRule'Post x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpRule'Post y__))
instance Data.ProtoLens.Field.HasField HttpRule "post" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpRule'Post x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpRule'Post y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpRule "maybe'delete" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpRule'Delete x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpRule'Delete y__))
instance Data.ProtoLens.Field.HasField HttpRule "delete" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpRule'Delete x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpRule'Delete y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpRule "maybe'patch" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpRule'Patch x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpRule'Patch y__))
instance Data.ProtoLens.Field.HasField HttpRule "patch" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpRule'Patch x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpRule'Patch y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField HttpRule "maybe'custom" (Prelude.Maybe CustomHttpPattern) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpRule'Custom x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpRule'Custom y__))
instance Data.ProtoLens.Field.HasField HttpRule "custom" CustomHttpPattern where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpRule'pattern' (\ x__ y__ -> x__ {_HttpRule'pattern' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpRule'Custom x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpRule'Custom y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HttpRule where
  messageName _ = Data.Text.pack "google.api.HttpRule"
  packedMessageDescriptor _
    = "\n\
      \\bHttpRule\DC2\SUB\n\
      \\bselector\CAN\SOH \SOH(\tR\bselector\DC2\DC2\n\
      \\ETXget\CAN\STX \SOH(\tH\NULR\ETXget\DC2\DC2\n\
      \\ETXput\CAN\ETX \SOH(\tH\NULR\ETXput\DC2\DC4\n\
      \\EOTpost\CAN\EOT \SOH(\tH\NULR\EOTpost\DC2\CAN\n\
      \\ACKdelete\CAN\ENQ \SOH(\tH\NULR\ACKdelete\DC2\SYN\n\
      \\ENQpatch\CAN\ACK \SOH(\tH\NULR\ENQpatch\DC27\n\
      \\ACKcustom\CAN\b \SOH(\v2\GS.google.api.CustomHttpPatternH\NULR\ACKcustom\DC2\DC2\n\
      \\EOTbody\CAN\a \SOH(\tR\EOTbody\DC2E\n\
      \\DC3additional_bindings\CAN\v \ETX(\v2\DC4.google.api.HttpRuleR\DC2additionalBindingsB\t\n\
      \\apattern"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        selector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "selector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"selector")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"body")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        additionalBindings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "additional_bindings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpRule)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"additionalBindings")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        get__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "get"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'get")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        put__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "put"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'put")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        post__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "post"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'post")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        delete__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delete"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delete")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        patch__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patch"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'patch")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
        custom__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CustomHttpPattern)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'custom")) ::
              Data.ProtoLens.FieldDescriptor HttpRule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, selector__field_descriptor),
           (Data.ProtoLens.Tag 7, body__field_descriptor),
           (Data.ProtoLens.Tag 11, additionalBindings__field_descriptor),
           (Data.ProtoLens.Tag 2, get__field_descriptor),
           (Data.ProtoLens.Tag 3, put__field_descriptor),
           (Data.ProtoLens.Tag 4, post__field_descriptor),
           (Data.ProtoLens.Tag 5, delete__field_descriptor),
           (Data.ProtoLens.Tag 6, patch__field_descriptor),
           (Data.ProtoLens.Tag 8, custom__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpRule'_unknownFields
        (\ x__ y__ -> x__ {_HttpRule'_unknownFields = y__})
  defMessage
    = HttpRule'_constructor
        {_HttpRule'selector = Data.ProtoLens.fieldDefault,
         _HttpRule'body = Data.ProtoLens.fieldDefault,
         _HttpRule'additionalBindings = Data.Vector.Generic.empty,
         _HttpRule'pattern' = Prelude.Nothing,
         _HttpRule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpRule
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld HttpRule
             -> Data.ProtoLens.Encoding.Bytes.Parser HttpRule
        loop x mutable'additionalBindings
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'additionalBindings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'additionalBindings)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'additionalBindings")
                              frozen'additionalBindings x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "selector"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"selector") y x)
                                  mutable'additionalBindings
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "body"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                                  mutable'additionalBindings
                        90
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "additional_bindings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'additionalBindings y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "get"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"get") y x)
                                  mutable'additionalBindings
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "put"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"put") y x)
                                  mutable'additionalBindings
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "post"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"post") y x)
                                  mutable'additionalBindings
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "delete"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"delete") y x)
                                  mutable'additionalBindings
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "patch"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"patch") y x)
                                  mutable'additionalBindings
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "custom"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"custom") y x)
                                  mutable'additionalBindings
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'additionalBindings
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'additionalBindings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'additionalBindings)
          "HttpRule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"selector") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"body") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'additionalBindings") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pattern'") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (HttpRule'Get v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v)
                         (Prelude.Just (HttpRule'Put v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v)
                         (Prelude.Just (HttpRule'Post v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v)
                         (Prelude.Just (HttpRule'Delete v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v)
                         (Prelude.Just (HttpRule'Patch v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8 v)
                         (Prelude.Just (HttpRule'Custom v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData HttpRule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpRule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpRule'selector x__)
                (Control.DeepSeq.deepseq
                   (_HttpRule'body x__)
                   (Control.DeepSeq.deepseq
                      (_HttpRule'additionalBindings x__)
                      (Control.DeepSeq.deepseq (_HttpRule'pattern' x__) ()))))
instance Control.DeepSeq.NFData HttpRule'Pattern where
  rnf (HttpRule'Get x__) = Control.DeepSeq.rnf x__
  rnf (HttpRule'Put x__) = Control.DeepSeq.rnf x__
  rnf (HttpRule'Post x__) = Control.DeepSeq.rnf x__
  rnf (HttpRule'Delete x__) = Control.DeepSeq.rnf x__
  rnf (HttpRule'Patch x__) = Control.DeepSeq.rnf x__
  rnf (HttpRule'Custom x__) = Control.DeepSeq.rnf x__
_HttpRule'Get ::
  Data.ProtoLens.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Get
  = Data.ProtoLens.Prism.prism'
      HttpRule'Get
      (\ p__
         -> case p__ of
              (HttpRule'Get p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpRule'Put ::
  Data.ProtoLens.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Put
  = Data.ProtoLens.Prism.prism'
      HttpRule'Put
      (\ p__
         -> case p__ of
              (HttpRule'Put p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpRule'Post ::
  Data.ProtoLens.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Post
  = Data.ProtoLens.Prism.prism'
      HttpRule'Post
      (\ p__
         -> case p__ of
              (HttpRule'Post p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpRule'Delete ::
  Data.ProtoLens.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Delete
  = Data.ProtoLens.Prism.prism'
      HttpRule'Delete
      (\ p__
         -> case p__ of
              (HttpRule'Delete p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpRule'Patch ::
  Data.ProtoLens.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Patch
  = Data.ProtoLens.Prism.prism'
      HttpRule'Patch
      (\ p__
         -> case p__ of
              (HttpRule'Patch p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpRule'Custom ::
  Data.ProtoLens.Prism.Prism' HttpRule'Pattern CustomHttpPattern
_HttpRule'Custom
  = Data.ProtoLens.Prism.prism'
      HttpRule'Custom
      (\ p__
         -> case p__ of
              (HttpRule'Custom p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\NAKgoogle/api/http.proto\DC2\n\
    \google.api\"2\n\
    \\EOTHttp\DC2*\n\
    \\ENQrules\CAN\SOH \ETX(\v2\DC4.google.api.HttpRuleR\ENQrules\"\181\STX\n\
    \\bHttpRule\DC2\SUB\n\
    \\bselector\CAN\SOH \SOH(\tR\bselector\DC2\DC2\n\
    \\ETXget\CAN\STX \SOH(\tH\NULR\ETXget\DC2\DC2\n\
    \\ETXput\CAN\ETX \SOH(\tH\NULR\ETXput\DC2\DC4\n\
    \\EOTpost\CAN\EOT \SOH(\tH\NULR\EOTpost\DC2\CAN\n\
    \\ACKdelete\CAN\ENQ \SOH(\tH\NULR\ACKdelete\DC2\SYN\n\
    \\ENQpatch\CAN\ACK \SOH(\tH\NULR\ENQpatch\DC27\n\
    \\ACKcustom\CAN\b \SOH(\v2\GS.google.api.CustomHttpPatternH\NULR\ACKcustom\DC2\DC2\n\
    \\EOTbody\CAN\a \SOH(\tR\EOTbody\DC2E\n\
    \\DC3additional_bindings\CAN\v \ETX(\v2\DC4.google.api.HttpRuleR\DC2additionalBindingsB\t\n\
    \\apattern\";\n\
    \\DC1CustomHttpPattern\DC2\DC2\n\
    \\EOTkind\CAN\SOH \SOH(\tR\EOTkind\DC2\DC2\n\
    \\EOTpath\CAN\STX \SOH(\tR\EOTpathBj\n\
    \\SOcom.google.apiB\tHttpProtoP\SOHZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations\248\SOH\SOH\162\STX\EOTGAPIJ\205Q\n\
    \\a\DC2\ENQ\SO\NUL\162\STX\SOH\n\
    \\189\EOT\n\
    \\SOH\f\DC2\ETX\SO\NUL\DC22\178\EOT Copyright 2016 Google Inc.\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \     http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DLE\NUL\DC3\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\US\n\
    \\t\n\
    \\STX\b\US\DC2\ETX\DC2\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULX\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\DC3\NULX\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC4\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\NAK\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\NAK\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL'\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SYN\NUL'\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETB\NUL\"\n\
    \\t\n\
    \\STX\b$\DC2\ETX\ETB\NUL\"\n\
    \\200\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\GS\NUL\"\SOH\SUB\187\SOH Defines the HTTP configuration for a service. It contains a list of\n\
    \ [HttpRule][google.api.HttpRule], each specifying the mapping of an RPC method\n\
    \ to one or more HTTP REST API methods.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\f\n\
    \\162\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX!\STX\RS\SUB\148\SOH A list of HTTP configuration rules that apply to individual API methods.\n\
    \\n\
    \ **NOTE:** All service configuration rules follow \"last one wins\" order.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX!\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX!\DC4\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX!\FS\GS\n\
    \\223\&9\n\
    \\STX\EOT\SOH\DC2\ACK\242\SOH\NUL\153\STX\SOH\SUB\208\&9 `HttpRule` defines the mapping of an RPC method to one or more HTTP\n\
    \ REST APIs.  The mapping determines what portions of the request\n\
    \ message are populated from the path, query parameters, or body of\n\
    \ the HTTP request.  The mapping is typically specified as an\n\
    \ `google.api.http` annotation, see \"google/api/annotations.proto\"\n\
    \ for details.\n\
    \\n\
    \ The mapping consists of a field specifying the path template and\n\
    \ method kind.  The path template can refer to fields in the request\n\
    \ message, as in the example below which describes a REST GET\n\
    \ operation on a resource collection of messages:\n\
    \\n\
    \\n\
    \     service Messaging {\n\
    \       rpc GetMessage(GetMessageRequest) returns (Message) {\n\
    \         option (google.api.http).get = \"/v1/messages/{message_id}/{sub.subfield}\";\n\
    \       }\n\
    \     }\n\
    \     message GetMessageRequest {\n\
    \       message SubMessage {\n\
    \         string subfield = 1;\n\
    \       }\n\
    \       string message_id = 1; // mapped to the URL\n\
    \       SubMessage sub = 2;    // `sub.subfield` is url-mapped\n\
    \     }\n\
    \     message Message {\n\
    \       string text = 1; // content of the resource\n\
    \     }\n\
    \\n\
    \ The same http annotation can alternatively be expressed inside the\n\
    \ `GRPC API Configuration` YAML file.\n\
    \\n\
    \     http:\n\
    \       rules:\n\
    \         - selector: <proto_package_name>.Messaging.GetMessage\n\
    \           get: /v1/messages/{message_id}/{sub.subfield}\n\
    \\n\
    \ This definition enables an automatic, bidrectional mapping of HTTP\n\
    \ JSON to RPC. Example:\n\
    \\n\
    \ HTTP | RPC\n\
    \ -----|-----\n\
    \ `GET /v1/messages/123456/foo`  | `GetMessage(message_id: \"123456\" sub: SubMessage(subfield: \"foo\"))`\n\
    \\n\
    \ In general, not only fields but also field paths can be referenced\n\
    \ from a path pattern. Fields mapped to the path pattern cannot be\n\
    \ repeated and must have a primitive (non-message) type.\n\
    \\n\
    \ Any fields in the request message which are not bound by the path\n\
    \ pattern automatically become (optional) HTTP query\n\
    \ parameters. Assume the following definition of the request message:\n\
    \\n\
    \\n\
    \     message GetMessageRequest {\n\
    \       message SubMessage {\n\
    \         string subfield = 1;\n\
    \       }\n\
    \       string message_id = 1; // mapped to the URL\n\
    \       int64 revision = 2;    // becomes a parameter\n\
    \       SubMessage sub = 3;    // `sub.subfield` becomes a parameter\n\
    \     }\n\
    \\n\
    \\n\
    \ This enables a HTTP JSON to RPC mapping as below:\n\
    \\n\
    \ HTTP | RPC\n\
    \ -----|-----\n\
    \ `GET /v1/messages/123456?revision=2&sub.subfield=foo` | `GetMessage(message_id: \"123456\" revision: 2 sub: SubMessage(subfield: \"foo\"))`\n\
    \\n\
    \ Note that fields which are mapped to HTTP parameters must have a\n\
    \ primitive type or a repeated primitive type. Message types are not\n\
    \ allowed. In the case of a repeated type, the parameter can be\n\
    \ repeated in the URL, as in `...?param=A&param=B`.\n\
    \\n\
    \ For HTTP method kinds which allow a request body, the `body` field\n\
    \ specifies the mapping. Consider a REST update method on the\n\
    \ message resource collection:\n\
    \\n\
    \\n\
    \     service Messaging {\n\
    \       rpc UpdateMessage(UpdateMessageRequest) returns (Message) {\n\
    \         option (google.api.http) = {\n\
    \           put: \"/v1/messages/{message_id}\"\n\
    \           body: \"message\"\n\
    \         };\n\
    \       }\n\
    \     }\n\
    \     message UpdateMessageRequest {\n\
    \       string message_id = 1; // mapped to the URL\n\
    \       Message message = 2;   // mapped to the body\n\
    \     }\n\
    \\n\
    \\n\
    \ The following HTTP JSON to RPC mapping is enabled, where the\n\
    \ representation of the JSON in the request body is determined by\n\
    \ protos JSON encoding:\n\
    \\n\
    \ HTTP | RPC\n\
    \ -----|-----\n\
    \ `PUT /v1/messages/123456 { \"text\": \"Hi!\" }` | `UpdateMessage(message_id: \"123456\" message { text: \"Hi!\" })`\n\
    \\n\
    \ The special name `*` can be used in the body mapping to define that\n\
    \ every field not bound by the path template should be mapped to the\n\
    \ request body.  This enables the following alternative definition of\n\
    \ the update method:\n\
    \\n\
    \     service Messaging {\n\
    \       rpc UpdateMessage(Message) returns (Message) {\n\
    \         option (google.api.http) = {\n\
    \           put: \"/v1/messages/{message_id}\"\n\
    \           body: \"*\"\n\
    \         };\n\
    \       }\n\
    \     }\n\
    \     message Message {\n\
    \       string message_id = 1;\n\
    \       string text = 2;\n\
    \     }\n\
    \\n\
    \\n\
    \ The following HTTP JSON to RPC mapping is enabled:\n\
    \\n\
    \ HTTP | RPC\n\
    \ -----|-----\n\
    \ `PUT /v1/messages/123456 { \"text\": \"Hi!\" }` | `UpdateMessage(message_id: \"123456\" text: \"Hi!\")`\n\
    \\n\
    \ Note that when using `*` in the body mapping, it is not possible to\n\
    \ have HTTP parameters, as all fields not bound by the path end in\n\
    \ the body. This makes this option more rarely used in practice of\n\
    \ defining REST APIs. The common usage of `*` is in custom methods\n\
    \ which don't use the URL at all for transferring data.\n\
    \\n\
    \ It is possible to define multiple HTTP methods for one RPC by using\n\
    \ the `additional_bindings` option. Example:\n\
    \\n\
    \     service Messaging {\n\
    \       rpc GetMessage(GetMessageRequest) returns (Message) {\n\
    \         option (google.api.http) = {\n\
    \           get: \"/v1/messages/{message_id}\"\n\
    \           additional_bindings {\n\
    \             get: \"/v1/users/{user_id}/messages/{message_id}\"\n\
    \           }\n\
    \         };\n\
    \       }\n\
    \     }\n\
    \     message GetMessageRequest {\n\
    \       string message_id = 1;\n\
    \       string user_id = 2;\n\
    \     }\n\
    \\n\
    \\n\
    \ This enables the following two alternative HTTP JSON to RPC\n\
    \ mappings:\n\
    \\n\
    \ HTTP | RPC\n\
    \ -----|-----\n\
    \ `GET /v1/messages/123456` | `GetMessage(message_id: \"123456\")`\n\
    \ `GET /v1/users/me/messages/123456` | `GetMessage(user_id: \"me\" message_id: \"123456\")`\n\
    \\n\
    \ # Rules for HTTP mapping\n\
    \\n\
    \ The rules for mapping HTTP path, query parameters, and body fields\n\
    \ to the request message are as follows:\n\
    \\n\
    \ 1. The `body` field specifies either `*` or a field path, or is\n\
    \    omitted. If omitted, it assumes there is no HTTP body.\n\
    \ 2. Leaf fields (recursive expansion of nested messages in the\n\
    \    request) can be classified into three types:\n\
    \     (a) Matched in the URL template.\n\
    \     (b) Covered by body (if body is `*`, everything except (a) fields;\n\
    \         else everything under the body field)\n\
    \     (c) All other fields.\n\
    \ 3. URL query parameters found in the HTTP request are mapped to (c) fields.\n\
    \ 4. Any body sent with an HTTP request can contain only (b) fields.\n\
    \\n\
    \ The syntax of the path template is as follows:\n\
    \\n\
    \     Template = \"/\" Segments [ Verb ] ;\n\
    \     Segments = Segment { \"/\" Segment } ;\n\
    \     Segment  = \"*\" | \"**\" | LITERAL | Variable ;\n\
    \     Variable = \"{\" FieldPath [ \"=\" Segments ] \"}\" ;\n\
    \     FieldPath = IDENT { \".\" IDENT } ;\n\
    \     Verb     = \":\" LITERAL ;\n\
    \\n\
    \ The syntax `*` matches a single path segment. It follows the semantics of\n\
    \ [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String\n\
    \ Expansion.\n\
    \\n\
    \ The syntax `**` matches zero or more path segments. It follows the semantics\n\
    \ of [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.3 Reserved\n\
    \ Expansion. NOTE: it must be the last segment in the path except the Verb.\n\
    \\n\
    \ The syntax `LITERAL` matches literal text in the URL path.\n\
    \\n\
    \ The syntax `Variable` matches the entire path as specified by its template;\n\
    \ this nested template must not contain further variables. If a variable\n\
    \ matches a single path segment, its template may be omitted, e.g. `{var}`\n\
    \ is equivalent to `{var=*}`.\n\
    \\n\
    \ NOTE: the field paths in variables and in the `body` must not refer to\n\
    \ repeated fields or map fields.\n\
    \\n\
    \ Use CustomHttpPattern to specify any HTTP method that is not included in the\n\
    \ `pattern` field, such as HEAD, or \"*\" to leave the HTTP method unspecified for\n\
    \ a given URL path rule. The wild-card rule is useful for services that provide\n\
    \ content to Web (HTML) clients.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\242\SOH\b\DLE\n\
    \\140\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\246\SOH\STX\SYN\SUB~ Selects methods to which this rule applies.\n\
    \\n\
    \ Refer to [selector][google.api.DocumentationRule.selector] for syntax details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\246\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\246\SOH\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\246\SOH\DC4\NAK\n\
    \\208\SOH\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\251\SOH\STX\141\STX\ETX\SUB\191\SOH Determines the URL pattern is matched by this rules. This pattern can be\n\
    \ used with any of the {get|put|post|delete|patch} methods. A custom method\n\
    \ can be defined using the 'custom' field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\251\SOH\b\SI\n\
    \I\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\253\SOH\EOT\DC3\SUB; Used for listing and getting information about resources.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\253\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\253\SOH\v\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\253\SOH\DC1\DC2\n\
    \-\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\128\STX\EOT\DC3\SUB\US Used for updating a resource.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\128\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\128\STX\v\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\128\STX\DC1\DC2\n\
    \-\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\131\STX\EOT\DC4\SUB\US Used for creating a resource.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\EOT\131\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\131\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\131\STX\DC2\DC3\n\
    \-\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\134\STX\EOT\SYN\SUB\US Used for deleting a resource.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\EOT\134\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\134\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\134\STX\DC4\NAK\n\
    \-\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\137\STX\EOT\NAK\SUB\US Used for updating a resource.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\EOT\137\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\137\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\137\STX\DC3\DC4\n\
    \A\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\140\STX\EOT!\SUB3 Custom pattern is used for defining custom verbs.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\140\STX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\140\STX\SYN\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\140\STX\US \n\
    \\158\STX\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\147\STX\STX\DC2\SUB\143\STX The name of the request field whose value is mapped to the HTTP body, or\n\
    \ `*` for mapping all fields not captured by the path pattern to the HTTP\n\
    \ body. NOTE: the referred field must not be a repeated field and must be\n\
    \ present at the top-level of request message type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\EOT\147\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\147\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\147\STX\DLE\DC1\n\
    \\187\SOH\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\152\STX\STX-\SUB\172\SOH Additional HTTP bindings for the selector. Nested bindings must\n\
    \ not contain an `additional_bindings` field themselves (that is,\n\
    \ the nesting may only be one level deep).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\EOT\152\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\EOT\152\STX\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\152\STX\DC4'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\152\STX*,\n\
    \G\n\
    \\STX\EOT\STX\DC2\ACK\156\STX\NUL\162\STX\SOH\SUB9 A custom pattern is used for defining custom HTTP verb.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\156\STX\b\EM\n\
    \2\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\158\STX\STX\DC2\SUB$ The name of this custom HTTP verb.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\158\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\158\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\158\STX\DLE\DC1\n\
    \5\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\161\STX\STX\DC2\SUB' The path matched by this custom verb.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\161\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\161\STX\t\r\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\161\STX\DLE\DC1b\ACKproto3"