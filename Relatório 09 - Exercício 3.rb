class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone está operando!"
  end
end

class Relatorio
  attr_reader :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end

class LabRegistro
  def initialize
    @microondas = MicroondasTelefone.new
    @relatorios = []
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas.ativar
    
    novo_relatorio = Relatorio.new(nome_projeto, autor)
    @relatorios << novo_relatorio
    puts "Registro de '#{nome_projeto}' adicionado com sucesso.\n\n"
  end

  def listar_experimentos
    puts "--- LISTA DE EXPERIMENTOS DO LABORATÓRIO ---"
    @relatorios.each do |relatorio|
      puts "Projeto: #{relatorio.nome_projeto} | Autor: #{relatorio.autor}"
    end
  end
end

lab_future_gadget = LabRegistro.new

lab_future_gadget.adicionar_registro("KRR", "Okabe Rintaro")
lab_future_gadget.adicionar_registro("CERN Hack", "Hashida Itaru")
lab_future_gadget.adicionar_registro("Time Leap Machine", "Makise Kurisu")

lab_future_gadget.listar_experimentos# 
class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone está operando!"
  end
end

class Relatorio
  attr_reader :nome_projeto, :autor

  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end
end

class LabRegistro
  def initialize
    @microondas = MicroondasTelefone.new
    @relatorios = []
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas.ativar
    
    novo_relatorio = Relatorio.new(nome_projeto, autor)
    @relatorios << novo_relatorio
    puts "Registro de '#{nome_projeto}' adicionado com sucesso.\n\n"
  end

  def listar_experimentos
    puts "--- LISTA DE EXPERIMENTOS DO LABORATÓRIO ---"
    @relatorios.each do |relatorio|
      puts "Projeto: #{relatorio.nome_projeto} | Autor: #{relatorio.autor}"
    end
  end
end

lab_future_gadget = LabRegistro.new

lab_future_gadget.adicionar_registro("KRR", "Okabe Rintaro")
lab_future_gadget.adicionar_registro("CERN Hack", "Hashida Itaru")
lab_future_gadget.adicionar_registro("Time Leap Machine", "Makise Kurisu")

lab_future_gadget.listar_experimentos