local cjson = require "cjson"
local mysql = require "mysql"
local req = require "req"

local name = ngx.var.ohost

local m = ngx.re.match(ngx.var.ruri, "^/api/(.*)")

name = ngx.quote_sql_str(name) -- SQL 转义，将 ' 转成 \', 防SQL注入，并且转义后的变量包含了引号，所以可以直接当成条件值使用

local db = mysql:new()

local sql = "select is_proxy from mock_mockserver where project_id = (select project_id from mock_project where project_name = \"" .. ngx.var.ohost .."\" ) and  api_url = \"".. string.sub(m[0], 2, -1) .."\""

local res, err, errno, sqlstate = db:query(sql)
db:close()
if not res then
    return {}
end

return res[1].is_proxy

