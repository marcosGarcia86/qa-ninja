Gclass Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "...#{nome} esta pronto"
    end

    def farol
        puts "acender farois da(o) #{marca} #{modelo}"
    end

    def gps
        puts "iniciando mapa...\nindique o ponto de chegada"
    end
end

class Carro < Veiculo
    def dirigir
        puts "\n*****Sistema #{marca} iniciando*****"
    end
end

class Moto < Veiculo
    def pilotar
        puts "\n*****Sistema #{marca} iniciando*****"
    end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.dirigir
civic.ligar
civic.gps
civic.farol

ecosport = Carro.new('Ecosport', 'Ford', 'XLT')
ecosport.dirigir
ecosport.ligar
ecosport.farol
ecosport.gps

fazer = Moto.new('Fazer', 'Yamaha', '250X')
fazer.pilotar
fazer.ligar
fazer.farol