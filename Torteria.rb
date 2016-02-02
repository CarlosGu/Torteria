class Torta
  
  def milanesa
    15
  end
  
  def hawaiana
    20
  end
  
  def pierna
    15
  end 
  
  def camaron
    30
  end

end

class Horno 
  
  def initialize(time, array_tortas)
    @@time = time 
    cocer(array_tortas) 
  end
    
  def cocer(a_t)
    a_t.each do |tim|
      if @@time == tim
        p "Voy a coser bien"
        
      end

    end
  end
  
end


torta = Torta.new
tortas = [torta.camaron, torta.camaron, torta.hawaiana, torta.pierna, torta.milanesa]
horno = Horno.new(15, tortas)