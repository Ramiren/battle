#file: main

require_relative  'inputs'
require_relative  'battle'  
require_relative  'classes'



#Ausführung 
def start
puts "Willkommen zu Battle of Students -"
puts "Zwei Studenten kämpfen mit ihren selbsgewählten Waffen gegeneinander!"
puts
 
#zeigt alle Studenten (Kämpfer) an
  Studenten.alle
 
#ruft Funktion battle auf mit Parameter = Objekten aus Inputs  
battle(kämpfer1_auswahl, kämpfer2_auswahl, waffenwahl1, waffenwahl2)

end


#main wiederholen
def wiederholen
  puts
  puts
  print "Weiter? 1 = Ja, 2 = Nein : "
  eingabe = gets.chomp
  
  #50.times {puts}
  
  if eingabe == "1"
  start
  
  else
    exit
  end
end

start






