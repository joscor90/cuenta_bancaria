class CuentaBancaria
    attr_accessor :nombre_de_usuario
    attr_reader :numero_cuenta, :vip
    def initialize(nombre_de_usuario, numero_cuenta, vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_cuenta = numero_cuenta
        raise RangeError if numero_cuenta.digits.count != 8
        @vip = vip
    end

    def numero_de_cuenta
        "#{self.vip}-#{self.numero_cuenta}"
    end
end



#test variable
c1 = CuentaBancaria.new('jose', 12345678, 1)
pp c1

#testing numero_de_cuenta
pp c1.numero_de_cuenta


