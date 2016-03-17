do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 144616352

  if matches[1] == "insudo" then
    user = 'user#id'..user
  end

  -- The message must come from a channel group
  if msg.to.type == 'channel' then
    local channel = 'channel#id'..msg.to.id
    channel_add_user(channel, user, callback, false)
    return "inviting sudo......"
  else 
    return 'This is not a super group!'
  end

end

return {
  description = "insudo", 
  usage = {
    "!invite name [user_name]", 
    "!invite id [user_id]" },
  patterns = {
    "^[!/](insudo)$"
  }, 
  run = run 
}

end
