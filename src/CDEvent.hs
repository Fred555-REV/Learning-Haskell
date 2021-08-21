module CDEvent
    (cdEvent
    ) where

      cdEvent :: IO()
      cdEvent = do
        let message = "Great Coders, Code Everyday!"
        -- print message
        print (reverse message)
