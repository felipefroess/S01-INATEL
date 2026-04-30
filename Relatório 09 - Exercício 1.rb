class BebidaAfterlife
  def initialize(nome, custo_base)
    @nome = nome
    self.custo_base = custo_base
  end

  def nome
    @nome
  end

  def custo_base
    @custo_base
  end

  def custo_base=(novo_valor)
    if novo_valor > 0
      @custo_base = novo_valor
    else
      @custo_base = 0
      puts "Erro: Custo inválido para #{@nome}."
    end
  end

  def preco_total
    @custo_base
  end

  def to_s
    "Bebida: #{@nome.ljust(18)} | Valor Final: $#{preco_total}"
  end
end

class DrinkIconico < BebidaAfterlife
  attr_accessor :nivel_notoriedade

  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end

  def preco_total
    @custo_base + (@nivel_notoriedade * 8)
  end

  def to_s
    "ÍCONE:  #{@nome.ljust(18)} | Valor Final: $#{preco_total} (Notoriedade: #{@nivel_notoriedade})"
  end
end

drinks = []
drinks << BebidaAfterlife.new("Cerveja Sintética", 15)
drinks << DrinkIconico.new("Johnny Silverhand", 50, 10) 
drinks << DrinkIconico.new("Jackie Welles", 40, 5)     

puts " MENU AFTERLIFE "
drinks.each do |drink|
  puts drink.to_s
end