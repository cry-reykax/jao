local function kfResolveLoad()
  if type(loadstring) == "function" then return loadstring end
  if type(load) == "function" then return load end
  local ge = (type(getgenv) == "function" and getgenv()) or _G
  if type(ge) == "table" then
    if type(ge.loadstring) == "function" then return ge.loadstring end
    if type(ge.load) == "function" then return ge.load end
  end
  return nil
end
local _kf_ls = kfResolveLoad()
local body = game:HttpGet("https://www.keyforge.win/v1/load/cmqpei736000004kw2qh67gjf?e=1&script=cmqpeys6l000204jx3ulxnd7r", true)
assert(type(_kf_ls) == "function", "[Keyforge Auth] no loader function")
local fn, err = _kf_ls(body)
if type(fn) ~= "function" then
  error("load failed: " .. tostring(err or fn or "not a function"), 0)
end
local _kf_ok, _kf_runerr = pcall(fn)
if not _kf_ok then error(tostring(_kf_runerr), 0) end
return _kf_runerr
