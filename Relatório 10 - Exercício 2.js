class Habilidade {
  usar() {
    throw new Error("O método 'usar()' deve ser implementado pelas subclasses.");
  }
}

class Smoke extends Habilidade {
  usar() {
    return "bloqueando a visão com fumaça! 🌫️";
  }
}

class Flash extends Habilidade {
  usar() {
    return "cegando os inimigos com um clarão! ✨";
  }
}

class Dash extends Habilidade {
  usar() {
    return "avançando rapidamente para a posição! 💨";
  }
}

class Armadilha extends Habilidade {
  usar() {
    return "posicionando um fio de detecção! 🪤";
  }
}

class Agente {
  constructor(nome, funcao, habilidade) {
    this.nome = nome;
    this.funcao = funcao;
    this.habilidade = habilidade; 
  }

  entrarEmCombate() {
    console.log(`[${this.funcao}] ${this.nome} entrou na partida e está ${this.habilidade.usar()}`);
  }
}

class Time {
  constructor(agentes) {
    this.agentes = agentes; 
  }

  iniciarPartida() {
    console.log("--- PARTIDA INICIADA ---");
    this.agentes.forEach(agente => agente.entrarEmCombate());
  }

  listarControladores() {
    return this.agentes.filter(agente => agente.habilidade instanceof Smoke);
  }
}

const smokeHabilidade = new Smoke();
const flashHabilidade = new Flash();
const dashHabilidade = new Dash();
const trapHabilidade = new Armadilha();

const omen = new Agente("Omen", "Controlador", smokeHabilidade);
const skye = new Agente("Skye", "Iniciador", flashHabilidade);
const jett = new Agente("Jett", "Duelista", dashHabilidade);
const cypher = new Agente("Cypher", "Sentinela", trapHabilidade);

const meuTime = new Time([omen, skye, jett, cypher]);

meuTime.iniciarPartida();

console.log("\n--- Listando apenas os Controladores (Smoke) ---");
const controladores = meuTime.listarControladores();
controladores.forEach(c => console.log(`Agente encontrado: ${c.nome}`));