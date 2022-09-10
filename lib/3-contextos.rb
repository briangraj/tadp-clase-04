class Usuario
  attr_accessor :edad

  def initialize(edad)
    @edad = edad
  end

  def lazy_edad
    proc { edad }
  end

  def con_bloque(bloque)
    bloque.call
  end

  def edad_de
    proc { |u| u.edad }
  end
end




mayor = Usuario.new(19)
menor = Usuario.new(15)
menor.con_bloque(mayor.lazy_edad)















class Persona
end

pepe = Persona.new

pepe.instance_eval do
  def nombre
    "Pepe"
  end
end



Persona.class_eval do
  def nombre
    "Pepe"
  end
end

pepe.singleton_class.class_eval do
  def nombre
    "Pepe"
  end
end


