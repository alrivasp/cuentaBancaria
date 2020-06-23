class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        raise RangeError, "El argumento de numero de cuenta NO es de 8 digitos" if numero_de_cuenta.length != 8
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        puts @vip == 1  ? "1-#{@numero_de_cuenta}" : "0-#{@numero_de_cuenta}" 
    end
end

nuevaCuenta = CuentaBancaria.new("Alan Brito Delgado", "01122334", 1)

nuevaCuenta.numero_de_cuenta