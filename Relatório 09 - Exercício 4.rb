module Localizavel
  def local_atual(endereco)
    puts "#{nome} está localizado em: #{endereco}."
  end
end

module Perigoso
  def exibir_ameaca
    puts "ALERTA: #{nome} apresenta comportamento suspeito e alto risco!"
  end
end

class Pessoa
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class Testemunha < Pessoa
  include Localizavel
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso
end

class CenaDoCrime
  def initialize
    @pessoas = []
  end

  def adicionar_pessoa(pessoa)
    @pessoas << pessoa
  end

  def listar_todos
    puts "\n--- Pessoas na Cena do Crime ---"
    @pessoas.each { |p| puts "- #{p.nome} (#{p.class})" }
  end

  def identificar_perigosos
    puts "\n--- Identificando Ameaças (Introspecção) ---"
    perigosos = @pessoas.select { |pessoa| pessoa.respond_to?(:exibir_ameaca) }
    
    perigosos.each(&:exibir_ameaca)
    perigosos
  end
end

testemunha = Testemunha.new("Sra. Hudson")
suspeito1 = Suspeito.new("Sebastian Moran")
suspeito2 = Suspeito.new("James Moriarty")

baker_street = CenaDoCrime.new
baker_street.adicionar_pessoa(testemunha)
baker_street.adicionar_pessoa(suspeito1)
baker_street.adicionar_pessoa(suspeito2)

testemunha.local_atual("Baker Street, 221B")
suspeito1.local_atual("Beco escuro próximo ao museu")

baker_street.listar_todos
baker_street.identificar_perigosos