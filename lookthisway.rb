# あっちむいてホイ    
def look_this_way(offence)
direction = ["上","下","左","右"]
com_direction = direction.sample
puts "あっちむいて..."
puts "（上/下/左/右）のいずれかを入力"
player_direction = gets.chomp.to_s

if(player_direction != "上" && player_direction != "下" && player_direction != "左" && player_direction != "右")
    puts "不正な入力があったのであっちむいてホイを終了します"
elsif(player_direction==com_direction)
    puts offence+"の勝ち"
elsif(player_direction!=com_direction)
    puts "まだ勝負は終わらない！仕切り直し！"
    rock_paper_scissors()
end
end

#ジャンケン
def rock_paper_scissors()
puts "ジャンケン..."
puts "(グー/チョキ/パー)のいずれかを入力"
player_hand = gets.chomp.to_s
hands = ["グー","チョキ","パー"]
com_hand = hands.sample

if(player_hand==com_hand)
    puts "あいこです"
    rock_paper_scissors() #ジャンケンやり直し
elsif (player_hand=="グー"&&com_hand=="チョキ"||player_hand=="チョキ"&&com_hand=="パー"||player_hand=="パー"&&com_hand=="グー")
    puts "ジャンケンはプレイヤーが勝った!!"
    look_this_way("プレイヤー")

elsif (player_hand=="グー"&&com_hand=="パー"||player_hand=="チョキ"&&com_hand=="グー"||player_hand=="パー"&&com_hand=="チョキ")
    puts "ジャンケンはCOMが勝った・・・"
    look_this_way("COM")
else
    puts "不正な入力があったのでジャンケンを終了します"
end
end


#ジャンケンを呼び出し
rock_paper_scissors()