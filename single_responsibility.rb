# Principio de responsabilidad única

class Coche
  # lectura y escritura o en java su relativo son getters and setters
  attr_accessor :marca
  # Construtor, recibe un hash, asi si se necesitan mas campos para inicializar la clase
  # o solo usarlos solo es declarar el atributo y decir a que value del mapa hace referencia  
  def initialize(args)
    @marca = args[:marca]
  end

end

class CocheDB
  def initialize(coche)
    @db = [] #simulador simple de una db
    @coche = coche
  end

  def guardar_coche_db
    @db << @coche.marca
    puts "Se ha guadado el coche #{@db}"
  end

  def eliminar_coche_db
    @db.delete(@coche.marca)
    puts "Se ha eliminado el coche #{@db}"
  end

end

#Ejecución
coche = Coche.new({marca: "Ford"})
puts coche.marca
save_coche = CocheDB.new(coche).guardar_coche_db
delete_coche = CocheDB.new(coche).eliminar_coche_db
