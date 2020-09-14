# Principio de segregación de interfaz
# En ruby no existen las interfaces, lo relativo puedría ser una implementación de module
# Se les da una logica inicial sólo para evidenciaer por consola su uso con super o si no hay sobreescritura

module IAve
  def comer
    puts "¡Hora de comer!"
  end
end

module IAveVoladora
  def volar
    puts "¡Hora de volar!"
  end
end

module IAveNadadora
  def nadar
    puts "¡Hora de nadar!"
  end
end

class Loro
  include IAve, IAveVoladora

  def comer
    super
    puts "El #{self.class} come."
  end

  def volar
    super
    puts "El #{self.class} vuela."
  end
end

class Pinguino
  include IAve, IAveNadadora

  def comer
    super
    puts "El #{self.class} come."
  end

  def nadar
    super
    puts "El #{self.class} nada."
  end
end

loro = Loro.new
loro.comer
loro.volar
puts "-----------------------------"
pinguino = Pinguino.new
pinguino.comer
pinguino.nadar
