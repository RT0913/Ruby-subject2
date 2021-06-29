puts "じゃんけん..."

def janken
  
  puts "[0]グー [1]チョキ [2]パー"
  
  my_hand = gets.to_i
  opponent_hand = rand(0..2)
  hand_choices = ["グー", "チョキ", "パー"]
  
  puts "ぽん！"
  puts "-----------------"
  puts "あなた:#{hand_choices[my_hand]}"
  puts "相手:#{hand_choices[opponent_hand]}"
  puts "-----------------"
  
  if my_hand == opponent_hand #じゃんけんあいこ
    puts "あいこで..."
    return true
    
  elsif (my_hand == 0 && opponent_hand == 1) || (my_hand == 1 && opponent_hand == 2) || (my_hand == 2 && opponent_hand == 0) #win
    
    def jankenwin_look_away #じゃんけんで勝った場合
    
      puts "あっち向いて..."
      puts "[0]上 [1]下 [2]左 [3]右"
      
      my_face = gets.to_i
      opponent_face = rand(0..3)
      face_choices = ["上", "下", "左", "右"]
      
      puts "ホイ!"
      puts "-----------------"
      puts "あなた:#{face_choices[my_face]}"
      puts "相手:#{face_choices[opponent_face]}"
      puts "-----------------"
      
      if my_face == opponent_face 
        puts "You Win!!"
        return false
      else
        return true
      end
    end
    
    next_look_away = true
    while next_look_away #あっち向いてホイ繰り返し
      next_look_away =jankenwin_look_away
    end
    
    return false
    
  else 
    
    def jankenlose_look_away #じゃんけんで負けた場合
    
      puts "あっち向いて..."
      puts "[0]上 [1]下 [2]左 [3]右"
      
      my_face = gets.to_i
      opponent_face = rand(0..3)
      face_choices = ["上", "下", "左", "右"]
      
      puts "ホイ!"
      puts "-----------------"
      puts "あなた:#{face_choices[my_face]}"
      puts "相手:#{face_choices[opponent_face]}"
      puts "-----------------"
      
      if my_face == opponent_face 
        puts "You Lose...:("
        return false
      else
        return true
      end
    end
    
    next_look_away = true
    while next_look_away #あっち向いてホイ繰り返し
      next_look_away =jankenlose_look_away
    end
    
    return false
  end
end

next_janken = true

while next_janken #じゃんけん繰り返し
  next_janken = janken
end