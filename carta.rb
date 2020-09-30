class Carta
    attr_accessor :numero, :pinta
    def initialize
        pintas = ['C', 'D', 'T', 'E']
        @numero = Random.rand(1...13)
        @pinta = pintas.sample
    end
end

cartas = []

5.times do 
    cartas.push(Carta.new)
end

pp cartas