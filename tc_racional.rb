# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class TestFraccion < Test::Unit::TestCase

  def test_prueba
    @var1 = Fraccion.new(1,2)
    @var2 = Fraccion.new(3,2)
    
    assert_equal "1/2", @var1.to_s
    assert_equal "2/1", (@var1+@var2).to_s 
    assert_equal "-1/1", (@var1-@var2).to_s 
    assert_equal "3/4", (@var1*@var2).to_s 
    assert_equal "1/3", (@var1/@var2).to_s 
  end
  
end
