
local cjson = require "cjson"
local mysql = require "mysql"
local req = require "req"

local args = req.getArgs()

local name = ngx.var.ohost

local m = ngx.re.match(ngx.var.ruri, "^/api/(.*)")

local  x =m[0]

if (string.sub(m[0],-1)=="?") then
    x = string.sub(m[0],1,-2)
end    


name = ngx.quote_sql_str(name) -- SQL 转义，将 ' 转成 \', 防SQL注入，并且转义后的变量包含了引号，所以可以直接当成条件值使用

local db = mysql:new()

local sql = "select project_id from mock_project where project_name = " .. name

local res, err, errno, sqlstate = db:query(sql)
db:close()
if not res then
    -- ngx.say(err)
    return {}
end

local newUri = "/" .. res[1].project_id ..x 

-- local newUri = res

-- newUri = "/df174f2a1ebf76bdb6ad" ..x

ngx.req.set_uri('8a15fbb94471050bb46f/api/demo1', false)
-- local newUri = "/" .. res[1].project_id ..m[0] 

-- if "1" == "1" then  
--     ngx.req.set_uri(newUri, false);  
--  end

