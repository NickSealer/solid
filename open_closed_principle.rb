# Principio abierto/cerrado

class Coche
  def precio_medio_coche
    puts "Cotización" # Para demostrar que se usa el metodo al llamar super
    0.0
  end
end

# se herada de la clase coche y se sobreescribe el metodo precio_medio_coche
class Renault < Coche
  def precio_medio_coche
    super # Se usa la logica del metodo heredado
    18000 # se sobreescribe el valor devuelto
  end
end

# se herada de la clase Coche y se sobreescribe el metodo precio_medio_coche
class Audi < Coche
  def precio_medio_coche
    super
    25000
  end
end

# se herada de la clase Coche y se sobreescribe el metodo precio_medio_coche
class Mercedes < Coche
  def precio_medio_coche
    super
    27000
  end
end

# Ejecución
coches = [Renault.new, Audi.new, Mercedes.new]

def imprimir_precio_medio_coche(coches)
  coches.each do |coche|
    puts "Coche: #{coche.class} - Valor: #{coche.precio_medio_coche}"
  end
end

imprimir_precio_medio_coche(coches)
