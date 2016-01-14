init = function(args)
   userID = "guest" .. tonumber( tostring( {} ):sub(8) )
   requestID = 0
   responseID = 0
   responses = {}
end

request = function()
   local path = "/todos/create"

   wrk.body   = "{ \"description\" : \"todo-test\" }"
   wrk.headers["Content-Type"] = "application/json"

   requestID = requestID + 1
   return wrk.format("POST", path)
end

--[[

local json = require("scripts.json")

response = function (status, headers, body)
   print(body)
   obj, pos = json.parse(body)
   print(obj["id"])
   print(obj)
   responseID = responseID + 1
end

--]]
