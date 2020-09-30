class Carta
    attr_accessor :numero, :pinta
    def initialize
        pintas = ['C', 'D', 'T', 'E']
        @numero = Random.rand(1...13)
        @pinta = pintas.sample
    end
end





