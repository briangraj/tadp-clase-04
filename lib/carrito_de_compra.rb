class CarritoDeCompra
  attr_accessor :productos

  def initialize
    @productos = []
  end

  def agregar_producto(producto)
    productos << producto
  end

  def total_a_pagar
    productos.length * 10
  end
end
