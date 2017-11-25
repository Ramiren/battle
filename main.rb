#file: main

require_relative 'inputs'  
require_relative 'classes'
require_relative 'battle'


#Ausführung 
def start
puts "Willkommen zu Battle of Students -"
puts "Zwei Studenten kämpfen mit ihren selbsgewählten Waffen gegeneinander!"
puts
 
#zeigt alle Studenten (Kämpfer) an
  Studenten.alle
  puts
 
#ruft Funktion battle auf mit Parameter = Objekten aus Inputs  
battle(kämpfer1_auswahl, kämpfer2_auswahl, waffenwahl1, waffenwahl2)

end


#main wiederholen
def wiederholen
  puts
  puts
  print "Weiter? 1 = Ja, 2 = Nein : "
  eingabe = gets.chomp
  
  50.times {puts}
  
  if eingabe == "2"
 exit
  
  else
     start
  end
end

start



start






