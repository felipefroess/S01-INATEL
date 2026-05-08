class Pokemon {
  #vida; 

  constructor(nome, tipo, vidaInicial = 100) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  get vida() {
    return this.#vida;
  }

  atacar() {
    console.log(`${this.nome} está se preparando para atacar!`);
  }

  receber_dano(quantidade) {
    this.#vida -= quantidade;
    
    if (this.#vida < 0) {
      this.#vida = 0;
    }
    
    console.log(`${this.nome} recebeu ${quantidade} de dano. Vida restante: ${this.#vida}`);
  }
}

class Pikachu extends Pokemon {
  constructor(nome = "Pikachu") {
    super(nome, "Elétrico");
  }

  atacar() {
    console.log(`${this.nome} usou Choque do Trovão! ⚡`);
  }
}

class Charizard extends Pokemon {
  constructor(nome = "Charizard") {
    super(nome, "Fogo/Voador");
  }

  atacar() {
    console.log(`${this.nome} usou Lança-Chamas! 🔥`);
  }
}


const meuPikachu = new Pikachu();
const meuCharizard = new Charizard();

meuPikachu.atacar();
meuCharizard.atacar();

console.log("\n--- O combate esquentou! ---");
meuPikachu.receber_dano(30);

console.log(`Verificação final - Vida do ${meuPikachu.nome}: ${meuPikachu.vida}`);