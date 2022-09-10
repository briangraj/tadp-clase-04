# class Peloton
#   attr_accessor :integrantes, :retirado, :estrategia
#
#   def self.cobarde(integrantes)
#     self.new(integrantes) do |peloton|
#       peloton.retirate
#     end
#   end
#
#   def self.descansador(integrantes)
#     self.new( integrantes) do |peloton|
#       peloton.descansar
#     end
#   end
#
#   def initialize(integrantes, &estrategia)
#     self.integrantes = integrantes
#     self.estrategia = estrategia
#     self.integrantes.each do |integrante|
#       integrante.peloton = self
#     end
#   end
#
#   def lastimado(defensor)
#     self.estrategia.call(self)
#   end
#
# end

# class Guerrero
#   attr_accessor :peloton
# end