function zwag(msg)
text = nil
if msg and msg.content and msg.content.text then
xname =  (Redis:get(Fast.."Name:Bot") or "ميلامو") 
text = msg.content.text.text
if text:match("^"..xname.." (.*)$") then
text = text:match("^"..xname.." (.*)$")
end
end
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text) or Redis:get(Fast.."All:Get:Reides:Commands:Group"..text)
if neww then
text = neww or text
end
end
if text == "زواج" or text == "رفع زوجتي" or text == "رفع زوجي" then 
if msg.reply_to_message_id > 0 then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"انت غبي تريد تتجوز نفسك ؟ شلون راح تتكاثر شلونن طيب ؟!!","md",true)
end
if tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"وخر عني ما لكيت غيري","md",true)
end
if Redis:sismember(Fast..msg.chat_id.."zwgat:",rep_idd) then
local rd_mtzwga = {
"اسف يحبيبي متزوجه",
"متجوزه عمي شوفلك وحده ثانيه",
"عيوني متزوجه ازوجها شلون؟ ",
"للاسف متزوجه البنيه دورلك وحده روسيه",
"خطيه طلعت متزوجه وراح يضل بدون مره"
}
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,rd_mtzwga[math.random(#rd_mtzwga)]).Reply,"md",true)
else
local rd_zwag = {
"تم زواجك منه وبارك الله لكم وعليكم",
"هلاهل هلاهل تم الزواج عقبال الجهال بعد",
"مبروك اتزوجها بعد عناء طويل",
"تم زواجكم... وهذا رقمي حتى لو العريس ما عرف يسد 075166..",
"الزواج تم يلا هاي هيه"
}
if Redis:sismember(Fast..msg.chat_id.."mutlqat:",rep_idd) then 
Redis:srem(Fast..msg.chat_id.."mutlqat:",rep_idd)
end
Redis:sadd(Fast..msg.chat_id.."zwgat:",rep_idd) 
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,rd_zwag[math.random(#rd_zwag)]).Reply,"md",true)
end
end
end
if text == "تخ" or text == "اقتلو" or text == "بيو" then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local ban = bot.getUser(Message_Reply.sender_id.user_id)
local bain = bot.getUser(msg.sender_id.user_id)
if tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return bot.sendText(msg_chat_id,msg_id,"*⌔︙انت غبي هذا انت*","md",true)  
end
if tonumber(Message_Reply.sender_id.user_id) == tonumber(1427981991) then
return bot.sendText(msg_chat_id,msg_id,"*⌔︙حبيبي هذا مطور السورس ممكن يفشخني اني وانته 😂😞*","md",true)  
end
if tonumber(Message_Reply.sender_id.user_id) == tonumber(Fast) then
return bot.sendText(msg_chat_id,msg_id,"*يخربيت الضحك تريد يقتل البوت 🙂😂😂*","md",true)  
end
if ban.first_name then
baniusername = '*قتل :- *['..bain.first_name..'](tg://user?id='..bain.id..')*\nالمجرم هذا 😢  :- *['..ban.first_name..'](tg://user?id='..ban.id..')*\nانـا لله وانـا اليـه راجعـون 😢😢\n*'
else
baniusername = 'لا يوجد'
end
 keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'المقتول 🔪', url = "https://t.me/"..ban.username..""},
},
}
local msgg = msg_id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token.."/sendvideo?chat_id=" .. msg_chat_id .. "&video=https://t.me/apqiy/130&caption=".. URL.escape(baniusername).."&reply_to_message_id="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "تف" or text == "اتفو" or text == "تفف" then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local ban = bot.getUser(Message_Reply.sender_id.user_id)
local bain = bot.getUser(msg.sender_id.user_id)
if tonumber(Message_Reply.sender_id.user_id) == tonumber(msg.sender_id.user_id) then
return bot.sendText(msg_chat_id,msg_id,"*⌔︙انت غبي هذا انت*","md",true)  
end
if tonumber(Message_Reply.sender_id.user_id) == tonumber(1427981991) then
return bot.sendText(msg_chat_id,msg_id,"*⌔︙حبيبي هذا المطور توم ما ينتفل عليه*","md",true)  
end
if tonumber(Message_Reply.sender_id.user_id) == tonumber(Fast) then
return bot.sendText(msg_chat_id,msg_id,"*يخربيت الضحك تريد يتف علي البوت 🙂😂😂*","md",true)  
end
if ban.first_name then
baniusername = '*تف :- *['..bain.first_name..'](tg://user?id='..bain.id..')*\nعلي المجرم هذا 😢  :- *['..ban.first_name..'](tg://user?id='..ban.id..')*\nاععع اي القرف هذا\n*'
else
baniusername = 'لا يوجد'
end
 keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'المجني عليه 😢', url = "https://t.me/"..ban.username..""},
},
}
local msgg = msg_id/2097152/0.5
return https.request("https://api.telegram.org/bot"..Token.."/sendvideo?chat_id=" .. msg_chat_id .. "&video=https://t.me/apqiy/132&caption=".. URL.escape(baniusername).."&reply_to_message_id="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
if text == "تاك للزوجات" or text == "الزوجات" then
local zwgat_list = Redis:smembers(Fast..msg.chat_id.."zwgat:")
if #zwgat_list == 0 then 
return send(msg.chat_id,msg.id,'⌔︙ لايوجد زوجات',"md",true) 
end 
local zwga_list = "⌔︙ عدد الزوجات : "..#zwgat_list.."\n⌔︙ الزوجات :\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
for k, v in pairs(zwgat_list) do
local UserInfo = bot.getUser(v)
local zwga_name = FlterBio(UserInfo.first_name)
local zwga_tag = '['..zwga_name..'](tg://user?id='..v..')'
zwga_list = zwga_list.."- "..zwga_tag.."\n"
end
return send(msg.chat_id,msg.id,zwga_list,"md",true) 
end
-- tlaq
if text == "طلاق" or text == "تنزيل زوجتي" or text == "تزيل زوجي" and msg.reply_to_message_id ~= 0 then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"احا انت تزوجت نفسك حتى تطلك","md",true)
end
if tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"ليش احنا اتزوجنا يروح خالتك حتى نطلك","md",true)
end
if Redis:sismember(Fast..msg.chat_id.."zwgat:",rep_idd) then
Redis:srem(Fast..msg.chat_id.."zwgat:",rep_idd)
Redis:sadd(Fast..msg.chat_id.."mutlqat:",rep_idd) 
local rd_tmtlaq = {
"تم طلاقكم للاسف",
"تم الطلاق بسبب تافه",
"تم الطلاق علمود بنيه ثانيه حلوه",
"تم الطلاق من وره عمه المره",
"تم الطلاق هذا رقمي حتى لو حبيتي نحجي باحترام 075166..."
}
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,rd_tmtlaq[math.random(#rd_tmtlaq)]).Reply,"md",true)
else
local rd_tlaq = {
"انته تزوجت حتى تطلك اصلا",
"معنسه محد تزوجها",
"محد معبرها قبل اساسا"
}
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,rd_tlaq[math.random(#rd_tlaq)]).Reply,"md",true)
end
end
if text == "تاك للمطلقات" or text == "المطلقات" then
local mutlqat_list = Redis:smembers(Fast..msg.chat_id.."mutlqat:")
if #mutlqat_list == 0 then 
return send(msg.chat_id,msg.id,'⌔︙ لايوجد مطلقات',"md",true) 
end 
local mutlqa_list = "⌔︙ عدد المطلقات : "..#mutlqat_list.."\n⌔︙ المطلقات :\n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
for k, v in pairs(mutlqat_list) do
local UserInfo = bot.getUser(v)
local mutlqa_name = FlterBio(UserInfo.first_name)
local mutlqa_tag = '['..mutlqa_name..'](tg://user?id='..v..')'
mutlqa_list = mutlqa_list.."- "..mutlqa_tag.."\n"
end
return send(msg.chat_id,msg.id,mutlqa_list,"md",true) 
end
if text == "رفع بقلبي" then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."in_heart:")) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"هوه اصلا بگلبك","md")
elseif tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"انت غبي تريد ترفع نفسك بگلبك ؟؟","md")
elseif tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"وخر عني ابن الاوادم","md")
elseif Redis:get(Fast..msg.chat_id..rep_idd.."in_heart:") then
return send(msg.chat_id,msg.id,"للاسف العضو بگلب واحد ثاني","md")
elseif tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."in_heart:")) ~= tonumber(senderr) and not Redis:get(Fast..msg.chat_id..rep_idd.."in_heart:") then
Redis:set(Fast..msg.chat_id..rep_idd.."in_heart:", senderr)
Redis:sadd(Fast..msg.chat_id..senderr.."my_heart:", rep_idd)
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,"تم رفعه بگلبك").Reply,"md",true)
end
end
if text == "تنزيل من قلبي" then 
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."in_heart:")) == tonumber(senderr) then
Redis:del(Fast..msg.chat_id..rep_idd.."in_heart:")
Redis:srem(Fast..msg.chat_id..senderr.."my_heart:", msg.chat_id..rep_idd)
return send(msg.chat_id,msg.id,Reply_Status(rep_idd,"تم تنزيله من گلبك").Reply,"md",true) 
elseif tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"انت غبي تريد تنزل نفسك من گلبك ؟؟","md")
elseif tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"وخر عني ابن الاوادم","md")
elseif tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."in_heart:")) ~= tonumber(senderr)then
return send(msg.chat_id,msg.id,"هو بگلبك اصلا حتى تنزله ؟؟","md")
end
end
if text == "انا فقلب منو" then
if not Redis:get(Fast..msg.chat_id..senderr.."in_heart:") then
return send(msg.chat_id,msg.id,"اكعد عمي انته محد يريدك","md")
elseif Redis:get(Fast..msg.chat_id..senderr.."in_heart:") then
local in_heart_id = Redis:get(Fast..msg.chat_id..senderr.."in_heart:")
local heart_name = bot.getUser(in_heart_id).first_name
return send(msg.chat_id,msg.id,"انت بگلب ["..heart_name.."](tg://user?id="..in_heart_id..")","md")
end
end
if text == "تاك للبقلبي" or text == "تاك للي فقلبي" or text == "تاك للناس الي فقلبي" then
local heart_list = Redis:smembers(Fast..msg.chat_id..senderr.."my_heart:")
if #heart_list == 0 then
return send(msg.chat_id,msg.id,"قلبك فاضي محدش فيه","md")
elseif #heart_list > 0 then
your_heart = "الناس الي فقلبك \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉\n"
for k,v in pairs(heart_list) do
local user_info = bot.getUser(v)
local name = FlterBio(user_info.first_name)
your_heart = your_heart..k.." - ["..name.."](tg://user?id="..v..")\n"
end
return send(msg.chat_id,msg.id,your_heart,"md")
end
end
if text == "مسح للبقلبي" or text == "مسح للي فقلبي" then 
local list = Redis:smembers(Fast..msg.chat_id..senderr.."my_heart:")
for k,v in pairs(list) do
Redis:del(Fast..msg.chat_id..v.."in_heart:")
end
Redis:del(Fast..msg.chat_id..senderr.."my_heart:")
return send(msg.chat_id,msg.id,"تم مسح الي فقلبك","md")
end
-------
-- ttgwzine
if text == "تعطيل جوزني" or text == "تعطيل زوجني" then
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*⌔︙ هذا الامر يخص '..Controller_Num(6)..' * ',"md",true)
end
Redis:set(Fast..'zwgnyy'..msg.chat_id,true)
send(msg.chat_id,msg.id,'\n ⌔︙تم تعطيل امر جوزني')
end
if text == "تفعيل جوزني" or text == "تفعيل زوجني" then
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*⌔︙ هذا الامر يخص '..Controller_Num(6)..' * ',"md",true)
end
Redis:del(Fast..'zwgnyy'..msg.chat_id)
send(msg.chat_id,msg.id,'\n ⌔︙تم تفعيل امر جوزني')
end
if text == "جوزني" or text == "زوجني" then
if not Redis:get(Fast..'zwgnyy'..msg.chat_id) then 
local Info_Chats = bot.getSupergroupFullInfo(msg.chat_id)
local chat_Members = bot.searchChatMembers(msg.chat_id, "*", Info_Chats.member_count).members
local rand_members = math.random(#chat_Members)
local member_id = chat_Members[rand_members].member_id.user_id
local member_name = bot.getUser(chat_Members[rand_members].member_id.user_id).first_name
local mem_tag = "["..FlterBio(member_name).."](tg://user?id="..member_id..")"
if tonumber(member_id) == tonumber(senderr) or tonumber(member_id) == tonumber(Fast) or bot.getUser(member_id).type.bot == "userTypeBot" then 
return send(msg.chat_id,msg.id,"ما عدنه احد للزواج شوفلك كلبه تتزوجها","md")
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'موافق', data = senderr..'/yes_zw/'..member_id},
{text = 'مو موافق', data = senderr..'/no_zw/'..member_id},
},
}
}
return send(msg.chat_id,msg.id,"جبتلك عروسه تشك شك وربي "..mem_tag.." شنو رأيك بيها ؟؟","md",false, false, false, false, reply_markup)
end
end
if text == "تتجوزيني" and msg.reply_to_message_id ~= 0 then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:")) == tonumber(senderr) or tonumber(Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")) == tonumber(rep_idd) then
return send(msg.chat_id,msg.id,"انتو متجوزين ولا هو محن وخلاص","md")
elseif tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"انت اهبل يغبي تريد تتجوز نفسك ؟؟","md")
elseif tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"وخر عني يبن الاوادم","md")
elseif Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:") then
local zwg_id = Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:")
local zwg_info = bot.getUser(zwg_id)
return send(msg.chat_id,msg.id,"راح اصيحلك زوجها\n["..FlterBio(zwg_info.first_name).."](tg://user?id="..zwg_id..")\nالحگ يول هذا يريد يتجوز مرتك","md")
elseif Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then
local zwg_id = Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")
local zwg_info = bot.getUser(zwg_id)
return send(msg.chat_id,msg.id,"راح اصيحلك مرتك\n["..FlterBio(zwg_info.first_name).."](tg://user?id="..zwg_id..")\nالحگي يحلوه زوجج يريد يتجوز عليج","md")
elseif not Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:") then
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local rep_info = bot.getUser(rep_idd)
local rep_tag = "["..FlterBio(rep_info.first_name).."](tg://user?id="..rep_idd..")"
local user_info = bot.getUser(senderr)
local user_tag = "["..FlterBio(user_info.first_name).."](tg://user?id="..senderr..")"
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'موافقه', data = rep_idd..'/yes_z/'..senderr},
{text = 'مو موافقه', data = rep_idd..'/no_z/'..senderr},
},
}
}
return send(msg.chat_id,msg.reply_to_message_id,"يا "..rep_tag.."\nالرجال"..user_tag.."\nطالب ايدج للزواج شنو رأيج ؟","md",false, false, false, false, reply_markup)
end
end
if text == "زوجتي" then
if Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then
local zwga_id = Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")
local zwga_name = FlterBio(bot.getUser(zwga_id).first_name)
return send(msg.chat_id,msg.id,"احجي ويا ["..zwga_name.."](tg://user?id="..zwga_id..") زوجج يريدج","md")
elseif not Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then
return send(msg.chat_id,msg.id,"زوجتك منو يغبي انت سنگل","md")
end
end
if text == "زوجي" then
if Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then
local zwga_id = Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")
local zwga_name = FlterBio(bot.getUser(zwga_id).first_name)
return send(msg.chat_id,msg.id,"احجي ويا ["..zwga_name.."](tg://user?id="..zwga_id..") مرتك تريدك","md")
elseif not Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then
return send(msg.chat_id,msg.id,"انتي ما متجوزه يا غبيه","md")
end
end
if text == "انتي طالق" and msg.reply_to_message_id ~= 0 then 
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"انت اهبل يبني تريد تطلق نفسك ؟؟","md")
elseif tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"وخر عني يبن الاوادم","md")
elseif tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:")) ~= tonumber(senderr) or tonumber(Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")) ~= tonumber(rep_idd) then
return send(msg.chat_id,msg.id,"مو مرتك حتى تطلقها يهبل","md")
elseif tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:")) == tonumber(senderr) or tonumber(Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")) == tonumber(rep_idd) then
Redis:del(Fast..msg.chat_id..rep_idd.."mtzwga:")
Redis:del(Fast..msg.chat_id..senderr.."mtzwga:")
return send(msg.chat_id,msg.id,"تم طلاقكم وشوفو الجهال راح تروح ويه منو","md")
end
end
if text == "انت طالق" and msg.reply_to_message_id ~= 0 then 
local Message_Reply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if tonumber(rep_idd) == tonumber(senderr) then
return send(msg.chat_id,msg.id,"انتي هبله يبنتي تريدين تطلقي نفسج ؟؟","md")
elseif tonumber(rep_idd) == tonumber(Fast) then
return send(msg.chat_id,msg.id,"وخري عني بنت الاوادم","md")
elseif tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:")) ~= tonumber(senderr) or tonumber(Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")) ~= tonumber(rep_idd) then
return send(msg.chat_id,msg.id,"مو  زوجك يغبيه حته تطلقي منو","md")
elseif tonumber(Redis:get(Fast..msg.chat_id..rep_idd.."mtzwga:")) == tonumber(senderr) or tonumber(Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")) == tonumber(rep_idd) then
Redis:del(Fast..msg.chat_id..rep_idd.."mtzwga:")
Redis:del(Fast..msg.chat_id..senderr.."mtzwga:")
return send(msg.chat_id,msg.id,"تم طلاقكم وشوفو الجهال راح تروح ويه منو","md")
end
end
if text == "بوت طلقني" then
if not Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then 
return send(msg.chat_id,msg.id,"انت لا متجوز ولا سنگل حته اطلقك","md")
elseif Redis:get(Fast..msg.chat_id..senderr.."mtzwga:") then
local zwg_id = Redis:get(Fast..msg.chat_id..senderr.."mtzwga:")
local zwg_name = bot.getUser(zwg_id).first_name
Redis:del(Fast..msg.chat_id..senderr.."mtzwga:")
Redis:del(Fast..msg.chat_id..zwg_id.."mtzwga:")
return send(msg.chat_id,msg.id,"تم طلاقك من ["..FlterBio(zwg_name).."](tg://user?id="..zwg_id..")\nشوفو منو راح ياخذ الجهال بعد","md")
end
end


end
return {Fast = zwag}