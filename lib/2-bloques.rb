saludo = "hola mundo"

def saludar_mundo
  puts saludo
end
saludar_mundo





define_method(:saludar_mundo) do
  puts saludo
end
saludar_mundo







mi_lambda = lambda { puts saludo }
mi_lambda.call




















# # parametros
# mi_lambda = lambda { |x| puts x }
# mi_lambda.call
# mi_lambda.call(2)
# mi_lambda.call(1,2,3)

# mi_proc = proc { |x| puts x }
# mi_proc.call
# mi_proc.call(2)
# mi_proc.call(1,2,3)




# # return
# def lambda_test
#   mi_lambda = lambda { return }
#   mi_lambda.call
#   puts "Hello world"
# end

# lambda_test


# def proc_test
#   mi_proc = proc { return }
#   mi_proc.call
#   puts "Hello world"
# end

# proc_test

























def yield_test
  yield(3)
  yield("hola")
end
yield_test do |x|
  puts x
end


def bloque_test(&bloque)
  bloque.call(3)
  yield("hola")
end
bloque_test do |x|
  puts x
end


def param_test(bloque)
  bloque.call(3)
  yield("hola")
end
mi_proc = proc do |x|
  puts x
end
param_test(mi_proc)


