class Carro
    attr_accessor :nome

    def Ligar
        puts 'pronta p/ iniciar trajeto...'
    end
end

ecosport = Carro.new
ecosport.nome = 'Ecosport'

puts ecosport.nome
ecosport.Ligar