init = function(args)
   userID = tonumber( tostring( {} ):sub(8) )
   requestID = 0

   direction = {}
   direction[1] = "up"
   direction[2] = "down"
   direction[3] = "left"
   direction[4] = "right"
end

request = function()
   local path = "/"

   if requestID == 0 then
      path = "/register?id=" .. userID
      requestID = requestID + 1
   elseif requestID == 5 then
      path = "/part?id=" .. userID
      requestID = 0
      userID = tonumber( tostring( {} ):sub(8) )
   else
      path = "/move?id=" .. userID .. "&direction=" .. direction[requestID]
      requestID = requestID + 1
   end

   print(path)
   return wrk.format(nil, path)
end
