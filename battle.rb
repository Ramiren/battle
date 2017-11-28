#file: battle
require_relative  'classes'


#Ermittlung Kampf, Werte ändern sich je nach "Wetter"
def battle(k1, k2, waffe1, waffe2)

puts
puts 'Das Wetter hat einen Einfluss auf den Kampf'
Studenten.auswirkung(Wetter.wieistwetter)
puts Wetter.wieistwetter.status


sleep(1)
puts "----/---/----"
sleep(1)
puts "----/--/-----"
sleep(1)
puts "----/-/------"
sleep(1)
puts "----//-------"
puts 
  
  puts
  puts "#{k1.name} (#{waffe1.name}) gegen #{k2.name} (#{waffe2.name})"
  puts "_______________________________________________"
  

  
  case waffe1.id
  
    when "1" then kwert1,kwert2 = k1.sarcasm,k2.sarcasm 
    when "2" then kwert1,kwert2 = k1.lazyness,k2.lazyness 
    when "3" then kwert1,kwert2 = k1.alcoholism,k2.alcoholism  
    when "4" then kwert1,kwert2 = k1.sexyness,k2.sexyness  
    when "5" then kwert1,kwert2 = k1.geekyness,k2.geekyness  
    when "6" then kwert1,kwert2 = k1.money,k2.money 
    when "7" then kwert1,kwert2 = k1.rage,k2.rage 
  ####
  end

  case waffe2.id 

    when "1" then kwert3,kwert4 = k2.sarcasm,k1.sarcasm 
    when "2" then kwert3,kwert4 = k2.lazyness,k1.lazyness 
    when "3" then kwert3,kwert4 = k2.alcoholism,k1.alcoholism  
    when "4" then kwert3,kwert4 = k2.sexyness,k1.sexyness 
    when "5" then kwert3,kwert4 = k2.geekyness,k1.geekyness  
    when "6" then kwert3,kwert4 = k2.money,k1.money 
    when "7" then kwert3,kwert4 = k2.rage,k1.rage 
    ####
  end
=begin
kwert1 = waffenwert des erten kämpfers
kwert2 = vertidigung gegen waffe (selbes attribut)
kwert3 = waffenwert des zweiten kämpfers
kwert4 = verteidigung gegen waffe (selbes attribut)
=end

puts "kwert1-4"
  puts kwert1,  kwert2,  kwert3,  kwert4
puts
kwertA = kwert1 - (kwert3/2)

kwertB = kwert2 - (kwert4/2)

puts "kwertA"
puts kwertA
puts"kwertB"
puts kwertB

  if kwertA > kwertB
    puts"#{k1.name} gewinnt mit der Waffe  \"#{waffe1.name}!\" "
    puts 
    puts
    puts "#{k1.name} #{waffe1.effect1} "
    puts
    puts "#{k2.name} #{waffe2.effect2}"
    wiederholen
    
  elsif kwertA < kwertB
    puts"#{k2.name} gewinnt mit der Waffe \"#{waffe2.name}!\" "
    puts
    puts
    puts "#{k2.name} #{waffe2.effect1} "
    puts
    puts "#{k1.name} #{waffe1.effect2} "
    wiederholen
    
  else 
    puts "Der Kampf ist unentschieden!"
    wiederholen
  end
end
  
