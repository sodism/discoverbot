--Created by @MehdiHS
--Telegram.me/MehdiHS
do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'adddeveloper' then
        chat = 'channel#'..msg.to.id
        user1 = 'user#'..120395246
        channel_invite(channel, user1, callback, false)
	return "Adding Bot develper..."
      end
if matches[1] == 'addmanager' then
        chat = 'channel#'..msg.to.id
        user2 = 'user#'..114307641
        channel_invite(channel, user2, callback, false)
	return "Adding Bot manager..."
      end
 
 end

return {
  description = "Invite Sudo and Admin", 
  usage = {
    "/addsudo : invite Bot Sudo", 
	},
  patterns = {
    "^[#!/](adddeveloper)",
    "^[#!/](addmanager)",
    "^([Aa]ddsudo)",
    "^([Aa]ddsupport)",
  }, 
  run = run,
}


end
