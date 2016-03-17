local function run(msg)
    if msg.to.type == 'channel' and not is_momod(msg) then
        channel_del_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        return 'you can not say any bad words in this group'
    end
end

return {
    patterns = {
    "[Kk][Ii][Rr]",
    "[Kk][Oo][Ss]",
    "[Nn][Aa][Nn][Aa][Tt]",
    "[Ff][Aa][Cc][Kk]",
    "[Ff]",
    "ف",
    "فاک",
    "کص",
    "کیر",
    "کون",
    "ننت"
    }, 
run = run
}
