class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposito(valor)
        
        self.saldo += valor
        #puts 'depositar R$ ' + valor.to_s + ' em conta.'
        #boas práticas
        puts "Depósito de R$ #{valor} em conta.\nNome do títular: #{self.nome}.\n\n"
    end
end

novoSaldo = Conta.new('Marcos')

novoSaldo.deposito(100)
novoSaldo.deposito(900)
puts "Saldo R$ #{novoSaldo.saldo}"