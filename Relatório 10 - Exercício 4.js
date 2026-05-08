class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    console.log(`${this.nome} está em posição de combate!`);
  }
}


class Gon extends Hunter {
  constructor() {
    super("Gon Freecss");
  }

  lutar() {
    console.log(`${this.nome} prepara o punho: Jan-Ken-Pon! Pedra! `);
  }
}

class Killua extends Hunter {
  constructor() {
    super("Killua Zoldyck");
  }

  lutar() {
    console.log(`${this.nome} ativou o Godspeed! `);
  }
}

class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }

  lutar() {
    console.log(`${this.nome} manifestou as Correntes do Julgamento! `);
  }
}

class TrupeFantasma {
  constructor(nomeGrupo, membros) {
    this.nomeGrupo = nomeGrupo;
    this.membros = membros; 
  }

  revelarMembros() {
    console.log(`\n Alerta da Associação: Membros da ${this.nomeGrupo} avistados:`);
    this.membros.forEach(membro => {
      console.log(`- Aranha detectada: ${membro}`);
    });
  }
}

const gon = new Gon();
const killua = new Killua();
const kurapika = new Kurapika();

console.log("--- Início do Confronto em Yorknew ---");
gon.lutar();
killua.lutar();
kurapika.lutar();

const membrosAranha = ["Chrollo Lucilfer", "Hisoka Morrow", "Feitan Portor"];
const trupe = new TrupeFantasma("Genei Ryodan (Trupe Fantasma)", membrosAranha);

trupe.revelarMembros();