require_relative "carrito_de_compra"

def ir_de_compras_con(un_carrito)
  un_carrito.agregar_producto("Arroz")
  un_carrito.agregar_producto("Gaseosa")
  un_carrito.agregar_producto("Alfajor")
  un_carrito.total_a_pagar
end

class RegistradorDeMensajes
  attr_accessor :mensajes_recibidos, :objeto_original

  def initialize(objeto_original)
    @objeto_original = objeto_original
    @mensajes_recibidos = []
  end

  def method_missing(nombre_mensaje, *argumentos, &bloque)
    mensajes_recibidos << { mensaje: nombre_mensaje, argumentos: argumentos }
    objeto_original.send(nombre_mensaje, *argumentos, &bloque)
  end
end

carrito = CarritoDeCompra.new
ir_de_compras_con(carrito)

