
local cjson = require "cjson"
local mysql = require "mysql"
local req = require "req"
local memcached = require "resty.memcached"

local args = req.getArgs()

local name = ngx.var.ohost

local m = ngx.re.match(ngx.var.ruri, "^/api/(.*)")

local  x =m[0]

if (string.sub(m[0],-1)=="?") then
    x = string.sub(m[0],1,-2)
end    
-- SQL 转义，将 ' 转成 \', 防SQL注入，并且转义后的变量包含了引号，所以可以直接当成条件值使用

local memc, err = memcached:new()
if not memc then
    ngx.say("failed to instantiate memc: ", err)
    ngx.exit(200)
    return
end
memc:set_timeout(1000) -- 1 sec
local ok, err = memc:connect("127.0.0.1",11211)
if not ok then
ngx.say("failed to connect: ", err)
ngx.exit(200)
return
end   
local res, flags, err = memc:get(name)
if err then
ngx.say("failed to get dog: ", err)
ngx.exit(403)
return 
end
if res then
ngx.say(res)
ngx.exit(200)
return
else
ngx.say("The Value is empty.")
ngx.exit(200)
return
end
memc:close()

-- local newUri = "/" .. res[1].project_id ..x 
-- ngx.req.set_uri(newUri, false)

