# Principio de substitución de Liskov
# Se les da una logica inicial sólo para evidenciar por consola su uso con super o si no hay sobreescritura

class Coche
  def num_asientos
    puts "Asientos:"
    0
  end
end

# se herada de la clase coche y se sobreescribe el metodo num_asientos
class Renault < Coche
  def num_asientos
    super # Se usa la logica del metodo heredado
    5 # se sobreescribe el valor devuelto
  end
end

# se herada de la clase coche y se sobreescribe el metodo num_asientos
class Audi < Coche
  def num_asientos
    super
    2
  end
end

# se herada de la clase coche y se sobreescribe el metodo num_asientos
class Mercedes < Coche
  def num_asientos
    super
    4
  end
end

# Ejecución
coches = [Renault.new, Audi.new, Mercedes.new]

def imprimir_num_asientos(coches)
  coches.each do |coche|
    puts "Coche: #{coche.class} - Asientos: #{coche.num_asientos}"
  end
end

imprimir_num_asientos(coches)
