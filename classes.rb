#file: classes

class Studenten  #bei erweitureng ändern: ini(x,d), @=x, attractor, Studenten(Werte),   battle (####)
  @@studenten_hash = Hash.new
  
  def initialize(id, name, sarcasm, lazyness, alcoholism, sexyness, geekyness, money, rage) ####
    @id, @name, @sarcasm, @lazyness, @alcoholism, @geekyness, @money, @rage = id, name, sarcasm, lazyness, alcoholism, geekyness, money, rage
    @sexyness = sexyness ####
   
    # key = id, value = objekt
    @@studenten_hash[id] = self
  end
  
  attr_reader :id ,:name
  attr_accessor :sarcasm, :lazyness, :alcoholism, :sexyness, :geekyness, :money, :rage ####
  
 
  #listet alle Studenten auf
  def self.alle
    @@studenten_hash.each do |key, value| puts "#{value.name} (#{key})"  end
  end
  
  #gibt hash mit allen objekten (key = name, value = self) zurück
  def self.hash
    @@studenten_hash
  end


 def self.auswirkung(wetter) 
  #Warm, Regen, Schnee, Nebel, Stum, Gewitter, Heiss 
    
    case wetter.name
    #sarcasm, lazyness, alcoholism, sexyness, geekyness, money, rage
    when "Warm" 
      Studenten.hash.each do |key, student| 
        student.sarcasm -= 20
        student.lazyness += 50
        student.alcoholism -= 5
        student.sexyness += 10 
        student.geekyness += 1 
        student.money -= 20
        student.rage -= 30
        end
    
    
    when "Regen" 
      Studenten.hash.each do |key, student| 
        student.sarcasm += 50
        student.lazyness += 10
        student.alcoholism += 15
        student.sexyness -= 10 
        student.geekyness += 0
        student.money += 0
        student.rage += 5
      end
     
    when "Schnee" 
       Studenten.hash.each do |key, student| 
        student.sarcasm -= 5
        student.lazyness += 16
        student.alcoholism += 50
        student.sexyness -= 15
        student.geekyness += 20
        student.money -= 0
        student.rage += 0
        end

    when "Nebel" 
       Studenten.hash.each do |key, student| 
         student.sarcasm -= 20
        student.lazyness += 50
        student.alcoholism += 6
        student.sexyness -= 10 
        student.geekyness += 1 
        student.money += 20
        student.rage -= 15
        end
  
    when "Sturm" 
       Studenten.hash.each do |key, student| 
        student.sarcasm -= 20
        student.lazyness += 10
        student.alcoholism -= 10
        student.sexyness += 10 
        student.geekyness -= 25
        student.money += 20
        student.rage += 50
        end

    when "Gewitter" 
       Studenten.hash.each do |key, student| 
        student.sarcasm += 20
        student.lazyness += 10
        student.alcoholism += 0
        student.sexyness -= 10 
        student.geekyness += 5
        student.money -= 200
        student.rage += 0
        end

    when "Heiss" 
      @@studenten_hash.each do |key, student| 
        student.sarcasm -= 30
        student.lazyness += 10
        student.alcoholism -= 5
        student.sexyness += 50
        student.geekyness += 1 
        student.money -= 30
        student.rage += 20
        end
      
    when "Lobo"
       Studenten.hash.each do |key, student| 
        student.sarcasm -= rand(100)
        student.lazyness += (130)
        student.alcoholism += rand(50)
        student.sexyness -= rand(100)
        student.geekyness += rand(200)
        student.money -= rand(200)
        student.rage  += rand(100)
      end
    end
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
  
    def self.alle
    puts
    @@waffen_hash.each do |key, value| puts "#{value.name} (#{key})" end
  end
  
  def self.hash
    @@waffen_hash
  end

  def effect1
    @effect1[rand(@effect1.length)]
  end
  
  def effect2
    @effect2[rand(@effect2.length)]
  end
  
end

#Studenten id, name, sarcasm, lazyness, alcoholism, sexyness, geekyness, money, rage
student1 = Studenten.new("1", "Roman", 99, 56, 65, 23, 34,23,78) ####
student2 = Studenten.new("2", "Elena", 12, 9, 34, 84, 65, 34, 27)   
student3 = Studenten.new("3", "Tobias", 77, 39, 85, 24, 67, 14, 56)  
student4 = Studenten.new("4","Thomas", 68, 55, 76, 65, 70, 36, 32)
student5 = Studenten.new("5", "Franziska", 79, 60, 14, 1, 90, 57, 68)
student6 = Studenten.new("6", "Moreno", 24, 15, 2, 75, 1, 65, 22)
student7 = Studenten.new("7", "Aline", 67, 84, 46, 45, 25, 49, 26 )
student8 = Studenten.new("8", "Marina", 14, 35, 15, 48, 15, 21, 12)
student9 = Studenten.new("9", "Pablo", 54, 41, 7, 22, 76, 20, 16)

#Waffen+Effecte (id, name, effect1 (wenn waffe gewinnt), effect2(wenn waffe verliert )
waffe1 = Waffen.new("1", "Fieser Sarkasmus", ["hat die spitzere Zunge!", "schlägt dich mit der Sarkasmus-Peitsche!", "bringt dich zum Weinen.", "ist böser.", "kann dich mal.", "ist der Schüler von Semar.", "geht mit Pfeiffer picknicken.", "hasst süsse Katzen.", "lässt Blut fliessen.", "gibt dir ein Einblick in die Hölle."], 
["hat einen Knoten in der Zunge", "kann nichts mehr dazu sagen", "geht weinend nach Hause", "zieht den Kürzeren"])

waffe2 = Waffen.new("2", "Extensive Faulheit", ["gibt sich noch weniger Mühe!", "ist noch am Brunchen!", "schläft noch.", "hat noch nicht mal begonnen!!", "hat immer Sonntag.", "ist das Vorbild für Homer Simpson.", "macht keinen Finger krumm."],
["ist nicht so faul.", "ist ein Streber.", "ist klein mit Hut.", "isch dr Urban.", "ist auf Wikipedia als Streber gelistet", "ist per du mit Semar.", "macht direkt die Hausaufgaben."])

waffe3 = Waffen.new("3", "Masslose Trunksucht", ["trinkt dich unter den Tisch!", "hat mehr Durst!", "ext ein Bier in 2.4 Sekunden!", "trinkt schon zum Frühstück", "hat kein Blut im Alkoholspiegel.", "hat ein Partyfass und kein Waschbrettbauch.", "kennt jede Bar in Chur.", "hat mal einen Russen unter dem Tisch gesoffen."],
["kann nicht trinken.", "trinkt sonst nur Mineralwasser.", "verträgt nichts.", "kann nicht mithalten."])

waffe4 = Waffen.new("4", "Verlockende Attraktivität" , ["ist grrrrrr!", "ist heiss wie Lava!", "badet in Ziegenmilch!", "lässt ihren Gegner alt aussehen!", "macht ihren Gegner noch hässlicher.", "ist eifacher geiler!", "ist too sexy for my love!"   ],
["ist einfach hässlich.", "ist hässlich wie die Nacht.", "wird noch abstossender.", "bring Kinder zum weinen.", "läuft nur mit Papiertüte auf dem Kopf rum."])

waffe5 = Waffen.new("5", "Absonderliche Geekheit" , ["ist gleichzeitig Sheldon, Leonard, Raj und Howard."],
["kann nicht Batman von Superman unterscheiden.", "denkt, dass Star Trek dasselbe wie Star Wars ist."])

waffe6 = Waffen.new("6", "Papas Finanzen", ["zahlt immer mit 1000-Noten.", "kauft sich einen Ferrari.", "benutzt Fiji-Wasser zum Zähneputzen.", "isst nur in ***-Restaurants.", "trägt nur Markenklamotten.", "lässt dich arm aussehen.", "kauft Kaffe in der Cafeteria."], 
["ist arm wie ein Student.", "ist ärmer als eine Kirchenmaus.", "ernährt sich nur von Fertig-Ramen.", "kauft Kaffe nur vom Automaten."])

waffe7 = Waffen.new("7", "Unbendiger Zorn", ["steht auf, haut auf den Tisch und bügelt Bekavac runter", "bringt Pfeiffer zum flüchten", "bring Chuck Norris zum weinen", "zwingt dich in die Knie"  ], 
["macht lieber das Mäuschen.", "ist klein, mit Hut", "verpufft in heisser Luft."])



class Wetter 
@@wetter_varianten = Array.new
  def initialize(name, status)
    @name = name
    @status = status
   
    @@wetter_varianten << self
  end

  attr_reader :name, :status

  def self.wieistwetter
    #wetter ändert sich jede Stunde
    xzahl = Time.new.hour % @@wetter_varianten.count
    @@wetter_varianten[xzahl]
  end

end

wetter1 = Wetter.new("Warm","Es ist heute sonnig und warm.")
wetter2 = Wetter.new("Regen", "Heute regnet es.")
wetter3 = Wetter.new("Schnee","Es schneit und schneit.")
wetter4 = Wetter.new("Nebel", "Es ist heute grau mit dickem Nebel.")
wetter5 = Wetter.new("Sturm", "Der Wind pfeift durch die Gassen")
wetter6 = Wetter.new("Gewitter", "Es ist gewittrig, es blitzt und donnert.")
wetter7 = Wetter.new("Heiss", "Es ist heute heiss wie Sau.")
wetter8 = Wetter.new("Lobo", "Heute geht aber garnichts -> LOBO")
