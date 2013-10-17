#! /usr/bin/ruby
# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :numer, :denom
  
  def initialize (numer, denom)
    @numer,@denom = numer,denom
  end
  
  def to_s
    "#{@numer}/#{@denom}"
  end
  
  # Función para sumar dos fracciones
  def +(otro)
    # Hacemos mcm para hallar el denominador
    denaux = mcm(@numer, otro.denom)
    numaux = ((denaux/@denom) * @numer) + ((denaux/otro.denom) * otro.numer)
    simplifica = gcd(numaux,denaux)
    Fraccion.new(numaux/simplifica,denaux/simplifica)
  end
  
  # Función para restar dos fracciones
  def -(otro)
    deno = mcm(@denom, otro.denom)
    num = ((deno/@denom) * @numer) - ((deno/otro.denom) * otro.numer)
    simplifica = gcd(num,deno)
    Fraccion.new(num/simplifica,deno/simplifica)
  end
  
  # Función para multiplicar dos fracciones
  def *(otro)
    num = @numer*otro.numer
    deno = @denom*otro.denom
    simplifica = gcd(num,deno)
    Fraccion.new(num/simplifica,deno/simplifica)
  end
  
  # Función para dividir dos fracciones
  def /(otro)
    num = @numer*otro.denom
    deno = @denom*otro.numer
    simplifica = gcd(num,deno)
    Fraccion.new(num/simplifica,deno/simplifica)
  end
   
end

=begin
# Codigo para la lectura de las 

if (not ARGV[0])
  puts "Error de lectura de variables."
  puts "Escriba parametros de entrada de la forma: programa.rb [num1 den1 num2 den2]"
  puts "Por ejemplo: programa.rb 1 2 3 4"
  puts "Crea los racionales 1/2 y 3/4"
else
  frac1 = Fraccion.new(ARGV[0].to_i,ARGV[1].to_i)
  frac2 = Fraccion.new(ARGV[2].to_i,ARGV[3].to_i)
  puts frac1
  puts frac2
  puts "Suma = #{frac1+frac2}"
  puts "Resta = #{frac1-frac2}"
  puts "Producto = #{frac1*frac2}"
  puts "Division = #{frac1/frac2}"
end
=end

# Declaramos las fracciones
frac1 = Fraccion.new(1,2)
frac2 = Fraccion.new(2,4)

# Imprimimos las fracciones
puts "Fraccion 1 #{frac1}"
puts "Fraccion 2 #{frac2}"

# Operaciones con las fracciones
fracs = frac1 + frac2
fracr = frac1 - frac2
fracm = frac1 * frac2
fracd = frac1 / frac2

# Imprimimos los resultados de las operaciones
puts "Suma de fracciones"
puts "#{frac1}+#{frac2}=#{fracs}"
puts "Resta de fracciones"
puts "#{frac1}-#{frac2}=#{fracr}"
puts "Producto de fracciones"
puts "#{frac1}*#{frac2}=#{fracd}"
puts "Division de fracciones"
puts "#{frac1}/#{frac2}=#{fracd}"
