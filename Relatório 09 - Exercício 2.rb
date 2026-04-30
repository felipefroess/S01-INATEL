class Musico
  attr_accessor :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError, "Este método deve ser implementado na classe filha"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(obra)
    puts "#{nome} está deslizando os dedos pelas teclas do piano tocando '#{obra}'."
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(obra)
    puts "#{nome} está fazendo o arco vibrar nas cordas do violino com '#{obra}'."
  end
end

class Maestro
  attr_accessor :musicos

  def initialize
    @musicos = []
  end

  def adicionar_musico(musico)
    @musicos << musico
  end

  def iniciar_concerto(obra)
    puts "--- Iniciando o Concerto: #{obra} ---"
    @musicos.each do |musico|
      musico.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    puts "\n--- Ajuste de Postura ---"
    status = @musicos.map do |musico|
      "#{musico.nome} está em ritmo #{estado}!"
    end
    status 
  end
end

kosei = Pianista.new("Kosei Arima")
kaori = Violinista.new("Kaori Miyazono")

maestro = Maestro.new
maestro.adicionar_musico(kosei)
maestro.adicionar_musico(kaori)

obra_escolhida = "Ballade No. 1 em Sol Menor"
maestro.iniciar_concerto(obra_escolhida)

mensagens_status = maestro.ajustar_postura("Allegro")
puts mensagens_status 