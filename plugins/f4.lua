local function h_k_a(cb_extra, success, result) 
local receiver = cb_extra.receiver 
 local msg = cb_extra.msg 
  local deleted = 0 
if success == 0 then 
send_large_msg(receiver, " -_- ") 
end   --@h_k_a
for k,v in pairs(result) do 
  if not v.first_name and not v.last_name then 
 kick_user(v.peer_id,msg.to.id)   
 deleted = deleted + 1 
 end 
 end 
 send_large_msg(receiver,"تم طرد الحسابات المحذوفه  ب نجاح -_- ") 
 end 
local function h_k_a_a(msg, matches)    
if is_owner(msg) then 
 local receiver = get_receiver(msg) 
channel_get_users(receiver, h_k_a,{receiver = receiver, msg = msg}) 
 end 
 end    
 return { 
   patterns = { 
   "^(طرد الحسابات المحذوفه)$" 
 }, 
run = 
} 

-- 

