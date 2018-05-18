module Lib where

import Java

hello :: String
hello = "hello"

helloExport :: Java a JString
helloExport = return $ toJava hello

foreign export java "@static eta.utils.EtaExport.helloExport" helloExport
  :: Java a JString
