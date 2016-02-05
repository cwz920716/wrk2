init = function(args)
   requestID = 0
end

request = function()
   if requestID == 0 then
      path = "/favicon.ico"
      requestID = requestID + 1
   elseif requestID == 1 then
      path = "/styles/style.css"
      requestID = requestID + 1
   elseif requestID == 2 then
      path = "/styles/highlight.css"
      requestID = requestID + 1
   elseif requestID == 3 then
      path = "/styles/media.css"
      requestID = requestID + 1
   elseif requestID == 4 then
      path = "/images/line-tile.png"
      requestID = requestID + 1
   elseif requestID == 5 then
      path = "/images/noise.png"
      requestID = requestID + 1
   elseif requestID == 6 then
      path = "/images/header-bottom.png"
      requestID = requestID + 1
   elseif requestID == 7 then
      path = "/styles/fonts/source-sans-pro/SourceSansPro-Regular-webfont.woff"
      requestID = requestID + 1
   elseif requestID == 8 then
      path = "/styles/fonts/source-sans-pro/SourceSansPro-Black-webfont.woff"
      requestID = 0
   end

    path = "/styles/media.css"
    return wrk.format(nil, path)
end
