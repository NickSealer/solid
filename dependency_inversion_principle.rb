# Principio de inversión de dependencias
# Se les da una logica inicial sólo para evidenciar por consola su uso con super o si no hay sobreescritura

class Conexion
  def get_datos
    value = "Obtener datos."
    puts value
  end

  def set_datos
    value = "Poner datos."
    puts value
  end
end

class AccesoADatos
  # En el ejmplo se ve DI "private Conexion conexion;" por eso se realiza como una clase
  def initialize(conexion = Conexion)
    @conexion = conexion.new
  end

  def get_datos
    @conexion.get_datos
  end
end

# Como en ruby no existen las interfaces se pueden user Modulos, Clases y Servicios
# para imitar su funcionamiento
# Se usa herencia para usar los metodos definidos en Conexion ya que como Modulo
# no se podría implementar la inyección de dependencia vista en el ejemplo para AccesoADatos

class DatabaseService < Conexion
  # Se sobreescriben los metodos de Conexión
  def get_datos
    puts value = "Obtener datos de DatabaseService"
  end
  def set_datos
    puts value = "Poner datos de DatabaseService"
  end
end

class APIService < Conexion
  # Se sobreescriben los metodos de Conexión
  def get_datos
    puts value = "Obtener datos de APIService"
  end
  def set_datos
    puts value = "Poner datos de DatabaseService"
  end
end


acceso = AccesoADatos.new
data_service = DatabaseService.new
api_service = APIService.new
acceso.get_datos
data_service.get_datos
data_service.set_datos
api_service.get_datos
api_service.set_datos
