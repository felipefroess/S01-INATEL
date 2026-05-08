class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo;
  }
}

class Diario {
  constructor() {
    this.criaturas = [];
  }

  registrarCriatura(criatura) {
    this.criaturas.push(criatura);
    console.log(`[Diário] Nova criatura registrada: ${criatura.nome}`);
  }

  listarCriaturas() {
    console.log("\n--- Registros do Diário 3 ---");
    this.criaturas.forEach(c => {
      console.log(`- Nome: ${c.nome} | Nível de Perigo: ${c.perigo}`);
    });
  }
}
class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.funcionarios = personagens;
  }

  listarFuncionarios() {
    console.log("\n--- Funcionários da Cabana do Mistério ---");
    this.funcionarios.forEach(p => {
      console.log(`Personagem: ${p.nome}`);
    });
  }
}

const diario3 = new Diario();

const gnomos = new Criatura("Gnomos", "Baixo");
const billCipher = new Criatura("Bill Cipher", "Extremo");

diario3.registrarCriatura(gnomos);
diario3.registrarCriatura(billCipher);
diario3.listarCriaturas();

const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel Pines");
const soos = new Personagem("Soos");

const aCabana = new CabanaMisterio([stan, mabel, soos]);
aCabana.listarFuncionarios();