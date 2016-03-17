do
 function run(msg, matches)
 
 local fuse = 'New FeedBack\n\nId : ' .. msg.from.id .. '\n\nName: ' .. msg.from.print_name ..'\n\nUsername: @' .. msg.from.username .. '\n\nThe Pm:\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local channel = "channel#id"..YourChannelId 
   --like : local cahnnel = "channel#id"..12345678
   
  local sends = send_msg(channel, fuse, ok_cb, false)
  return 'Sent!'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[#!/][Ff]eedback (.*)$"
 
  },
  run = run
 }
   
