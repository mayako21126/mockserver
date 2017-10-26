
local cjson = require "cjson"
local mysql = require "mysql"


local name = ngx.var.ohost

local m = ngx.re.match(ngx.var.ruri, "^/hello/(.*)")

name = ngx.quote_sql_str(name) -- SQL 转义，将 ' 转成 \', 防SQL注入，并且转义后的变量包含了引号，所以可以直接当成条件值使用

local sql = "select project_id from mock_project where project_name = " .. name


local db = mysql:new()

-- local sql = "select mock_project.project_id from mock_project where mock_project.project_name = " .. ngx.var.ohost


-- ngx.log(ngx.ALERT,sql)
-- ngx.log(ngx.ALERT,"x2xx:"+ngx.var.ruri)
local res, err, errno, sqlstate = db:query(sql)
db:close()
if not res then
    ngx.say(err)
    return {}
end

local newUri = "/" .. res[1].project_id ..m[0] 

ngx.say(newUri)
-- if "1" == "1" then  
--     ngx.req.set_uri("/lua_rewrite_3", false);  
--  end

