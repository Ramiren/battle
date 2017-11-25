#file: battle
require_relative  'classes'


#Ermittlung Kampf, Werte ändern sich je nach "Wetter"
def battle(k1, k2, waffe1, waffe2)

puts
Studenten.auswirkung(Wetter.wieistwetter)
puts Wetter.wieistwetter.status

sleep(2)
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
  puts 
  
  case waffe1.id
  
    when "1" then kwert1 = k1.sarcasm - k2.sarcasm 
    when "2" then kwert1 = k1.lazyness - k2.lazyness
    when "3" then kwert1 = k1.alcoholism - k2.alcoholism
    when "4" then kwert1 = k1.sexyness - k2.sexyness
    when "5" then kwert1 = k1.geekyness - k2.geekyness
    when "6" then kwert1 = k1.money - k2.money
    when "7" then kwert1 = k1.rage - k2.rage
  ####
  end

  case waffe2.id 

    when "1" then kwert2 = k2.sarcasm - k1.sarcasm
    when "2" then kwert2 = k2.lazyness - k1.lazyness
    when "3" then kwert2 = k2.alcoholism - k1.alcoholism
    when "4" then kwert2 = k2.sexyness - k1.sexyness
    when "5" then kwert2 = k2.geekyness - k1.geekyness 
    when "6" then kwert2 = k2.money - k1.money
    when "7" then kwert2 = k2.rage - k1.rage
    ####
  end
  
  if kwert1 > kwert2
    puts"#{k1.name} gewinnt mit der Waffe  \"#{waffe1.name}!\" "
    puts 
    puts
    puts "#{k1.name} #{waffe1.effect1} "
    puts
    puts "#{k2.name} #{waffe2.effect2}"
    wiederholen
    
  elsif kwert1 < kwert2
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
  
