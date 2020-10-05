class Carta
    attr_accessor :numero, :pinta
    def initialize(numero=Random.rand(1...13), pinta=['C', 'D', 'T', 'E'].sample)
        if numero > 13 || numero < 1
            raise RangeError, "valor fuera de rango"
        end
        @numero = numero
        if ['C', 'D', 'T', 'E'].include?(pinta) == false
            raise ArgumentError, "valor incorrecto"
        end
        @pinta = pinta
    end
end

#Instanciando carta pasando parámetros
c1 = Carta.new(13, 'D')
pp c1

#Instanciando carta con valor por defecto.
c2 = Carta.new
pp c2

#Probando manejo de excepciones
# c3 = Carta.new(14, 'C')
# c4 = Carta.new(0, 'D')
# c5 = Carta.new(1, 'X')

#Probando la clase creando 5 objetos y empujándolos a un arreglo.

cartas = []

5.times do 
    cartas.push(Carta.new)
end

print "#{cartas}\n"