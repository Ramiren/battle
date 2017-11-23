#file: classes


class Studenten  #bei erweitureng ändern: ini(x,d), @=x, attractor, Studenten(Werte),   battle (####)
  @@studenten_hash = Hash.new
  
  def initialize(id, name, sarcasm, lazyness, alcoholism, sexyness, geekyness, money, rage) ####
    @id, @name, @sarcasm, @lazyness, @alcoholism, @geekyness, @money, @rage = id, name, sarcasm, lazyness, alcoholism, geekyness, money, rage
    @sexyness = sexyness ####
   
    # key = id, value = objekt
    @@studenten_hash[id] = self
  end
  
  attr_reader :id ,:name, :sarcasm, :lazyness, :alcoholism, :sexyness, :geekyness, :money, :rage ####
  
 
  #listet alle Studenten auf
  def Studenten.alle
    @@studenten_hash.each do |key, value| puts "#{value.name} (#{key})"  end
  end
  
  #gibt hash mit allen objekten (key = name, value = self) zurück
  def Studenten.hash
    @@studenten_hash
  end
  
 
end

#-------------------------------------------------------------------

class Waffen
  @@waffen_hash = Hash.new

  def initialize(id, name, effect1, effect2)
    @id, @name, @effect1, @effect2 = id, name, effect1, effect2
    @@waffen_hash[id] = self
  end
  
  attr_reader :id, :name, 
  
    def Waffen.alle
    puts
    @@waffen_hash.each do |key, value| puts "#{value.name} (#{key})" end
  end
  
  def Waffen.hash
    @@waffen_hash
  end
  

  def effect1
    @effect1[rand(@effect1.length)]
  end
  
  def effect2
    @effect2[rand(@effect2.length)]
  end
  
end

class Wetter
  def initialize(name, effect)
    @name = name
    @effect = effect
  end
  
  def Wetter.zustand
 

    wetter = wetter_auswahl[rand(4)]

 end
  
  
end

#Studenten id, name, sarcasm, lazyness, alcoholism, sexyness, geekyness, money, rage
roman = Studenten.new("1", "Roman", 99, 56,35, 23, 35,23,78) ####
elena = Studenten.new("2", "Elena", 12, 34, 3, 84, 36, 34, 27)   
tobias = Studenten.new("3", "Tobias", 77, 39, 85, 24, 67, 14, 56)  
thomas = Studenten.new("4","Thomas", 68, 55, 76, 65, 70, 36, 32)
franziska = Studenten.new("5", "Franziska", 79, 60, 14, 1, 90, 57, 68)
moreno = Studenten.new("6", "Moreno", 24, 15, 2, 75, 1, 65, 22)
aline = Studenten.new("7", "Aline", 67, 84, 46, 45, 25, 49, 26 )
marina = Studenten.new("8", "Marina", 14, 35, 15, 48, 15, 21, 12)
pablo = Studenten.new("9", "Pablo", 54, 41, 7, 22, 76, 20, 16)

#Waffen+Effecte (id, name, effect1 (wenn waffe gewinnt), effect2(wenn waffe verliert )
sarc = Waffen.new("1", "Fieser Sarkasmus", ["hat die spitzere Zunge!", "schlägt dich mit der Sarkasmus-Peitsche!", "bringt dich zum Weinen.", "ist böser.", "kann dich mal.", "ist der Schüler von Semar.", "geht mit Pfeiffer picknicken.", "hasst süsse Katzen.", "lässt Blut fliessen.", "gibt dir ein Einblick in die Hölle."], 
["hat einen Knoten in der Zunge", "kann nichts mehr dazu sagen", "geht weinend nach Hause", "zieht den Kürzeren"])

lazy = Waffen.new("2", "Extensive Faulheit", ["gibt sich noch weniger Mühe!", "ist noch am Brunchen!", "schläft noch.", "hat noch nicht mal begonnen!!", "hat immer Sonntag.", "ist das Vorbild für Homer Simpson.", "macht keinen Finger krumm."],
["ist nicht so faul.", "ist ein Streber.", "ist klein mit Hut.", "isch dr Urban.", "ist auf Wikipedia als Streber gelistet", "ist per du mit Semar.", "macht direkt die Hausaufgaben."])

alco = Waffen.new("3", "Masslose Trunksucht", ["trinkt dich unter den Tisch!", "hat mehr Durst!", "ext ein Bier in 2.4 Sekunden!", "trinkt schon zum Frühstück", "hat kein Blut im Alkoholspiegel.", "hat ein Partyfass und kein Waschbrettbauch.", "kennt jede Bar in Chur.", "hat mal einen Russen unter dem Tisch gesoffen."],
["kann nicht trinken.", "trinkt sonst nur Mineralwasser.", "verträgt nichts.", "kann nicht mithalten."])

sexy = Waffen.new("4", "Verlockende Attraktivität" , ["ist grrrrrr!", "ist heiss wie Lava!", "badet in Ziegenmilch!", "lässt ihren Gegner alt aussehen!", "macht ihren Gegner noch hässlicher.", "ist eifacher geiler!", "ist too sexy for my love!"   ],
["ist einfach hässlich.", "ist hässlich wie die Nacht.", "wird noch abstossender.", "bring Kinder zum weinen.", "läuft nur mit Papiertüte auf dem Kopf rum."])

geek = Waffen.new("5", "Absonderliche Geekheit" , ["ist gleichzeitig Sheldon, Leonard, Raj und Howard."],
["kann nicht Batman von Superman unterscheiden.", "denkt, dass Star Trek dasselbe wie Star Wars ist."])

money = Waffen.new("6", "Papas Finanzen", ["zahlt immer mit 1000-Noten.", "kauft sich einen Ferrari.", "benutzt Fiji-Wasser zum Zähneputzen.", "isst nur in ***-Restaurants.", "trägt nur Markenklamotten.", "lässt dich arm aussehen.", "kauft Kaffe in der Cafeteria."], 
["ist arm wie ein Student.", "ist ärmer als eine Kirchenmaus.", "ernährt sich nur von Fertig-Ramen.", "kauft Kaffe nur vom Automaten."])

rage = Waffen.new("7", "Unbendiger Zorn", ["steht auf, haut auf den Tisch und bügelt Bekavac runter", "bringt Pfeiffer zum flüchten", "bring Chuck Norris zum weinen", "zwingt dich in die Knie"  ], 
["macht lieber das Mäuschen.", "ist klein, mit Hut", "verpufft in heisser Luft."])



  

 def auswirkung

   if zustand == "heiter"
     
    puts 
    puts "alle super laune"
    
   else
     puts "nein"
   end
 

end


