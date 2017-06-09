do 
ws = {} 
rs = {} 

-- some examples of how to use this :3 
ws[1] = "هلو"   --msg 
rs[1] = " هــﮧ✥ـٍہٰٓـ๋͜لاـوات🦀❤️ "    --replaY 

ws[2] = "اريد بوت" 
rs[2] = " ๋͜تہــدلَـلَ رآسہــلَ #صہـؤُفيہ مہــطؤُريہـﮯ
DEV  ▁   @tofyww 👨‍🔬  " 

ws[3] = "هلا" 
rs[3] = " هــﮧ✥ـٍہٰٓـ๋͜لاـ بيك🦀❤️ " 

ws[4] = "شلونك" 
rs[4] = " تٰمـہام ⚘║␙ 🎅🏿🐾 وانٓــت ࿐❥🐚💛 " 

ws[5] = "شلونكم"   --msg 
rs[5] = " آلـْ ح ـمـِْدِّ اللّـٰھ وانٓــتــٰـہ ࿐❥ 🌎🌸 "  --reply 

ws[6] = "تمام" 
rs[6] = " دۈۋم يّےـآٱآرب ↜┇✥ 💁🏿‍♂️👅 " 
ws[7] = "دوم" 
rs[7] = " פـبـ⚘ـيبي 💓💧 " 

ws[8] = "تخليني" 
rs[8] = " ؏ راسي🌝🦀 " 

ws[9] = "هلاو" 
rs[9] = " هــﮧ✥ـٍہٰٓـ๋͜لاـوات  حـٰ« ࿐❥ـبي 🐹💧 " 
ws[10] = "🌝" 
rs[10] = " منﮩﮩﮩﮩور🌝🦀 " 

ws[11] = "انجب" 
rs[11] = " صﮩﮩار ستادي🐸🍃 " 

ws[12] = "احبك" 
rs[12] = " פـبـ⚘ـيبي 💓💧 وني هم😻🦀 " 

ws[13] = "اكرهك" 
rs[13] = " ديله شلون اطيق خلقتك اني😾🖖🏿🕷 " 

ws[14] = "تحبني" 
rs[14] = " مادري افڱﮩﮩﮩر🐸💔 " 

ws[15] = "محمد" 
rs[15] = " ڤڍ ﯿتﮩه😻🦀🍃 " 

ws[16] = "حسين" 
rs[16] = " ﯿمه ﯿمه الثكيل ڤڍ ﯿتﮩه😻🦀🍃 " 

ws[17] = "صوفي" 
rs[17] = "حبيبي هذا مطوري" 

ws[18] = "ضوجه" 
rs[18] = " مال   طلع للمول هسه🌝👄 " 

ws[19] = "مصطفئ" 
rs[19] = " تجراسك 🌝🦀❤️ " 

-- the main function
function run( msg, matches ) 
   -- just a local variables that i used in my algorithm 
   local i = 0; local w = false 

   -- the main part that get the message that the user send and check if it equals to one of the words in the ws table :) 
   -- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
   for k,v in pairs(ws) do 
      -- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
      if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then 
         -- assign the { i } to the index of the reply and the { w } to true ( we will use it later ) 
         i = k; w = true; 
      end 
   end 

   -- check if { w } is not false and { i } not equals to 0 
   if ( (w ~= false) and (i ~= 0) ) then 
      -- get the receiver :3 
      R = get_receiver(msg) 
      -- send him the proper message from the index that { i } assigned to 
      --send_large_msg ( R , rs[i] ); 
      --send_reply(msg.id, rs[i]) 
      reply_msg(msg.id, rs[i], ok_cb, false ) 
   end 
   -- don't edit this section 
   if ( msg.text == "about" ) then 
      if ( msg.from.username == "@dev_tofy" ) then 
         R = get_receiver(msg) 
         send_large_msg ( R , "Made by "@dev_tofy" ); 
      end 
   end 

end 

return { 
   patterns = { 
      "(.*)" 
     }, 
     run = run 
} 

end
