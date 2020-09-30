class CuentaBancaria
    attr_accessor :nombre_de_usuario
    attr_reader :numero_de_cuenta, :vip
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        raise RangeError if @numero_de_cuenta.digits.count != 8
        @vip = vip
    end
end

def numero_de_cuenta(cuenta)
    if cuenta.vip == 1
        cuenta.numero_de_cuenta.to_s
        vip_member = "1-#{cuenta.numero_de_cuenta}"
    elsif cuenta.vip == 0
        cuenta.numero_de_cuenta.to_s
        vip_member = "0-#{cuenta.numero_de_cuenta}"
    end
    return vip_member
end

#test variable
c1 = CuentaBancaria.new('jose', 12345678)

