using System;

namespace DefesaDeGondor
{
    public class CombatenteAliado
    {
        private string nome;
        private string linhagem;
        private string patente;

        public CombatenteAliado(string nome, string linhagem, string patente)
        {
            this.nome = nome;
            this.linhagem = linhagem;
            this.patente = patente;
        }

        public void ApresentarUnidade()
        {
            Console.WriteLine("--- Informações da Unidade ---");
            Console.WriteLine($"Nome: {nome}");
            Console.WriteLine($"Linhagem: {linhagem}");
            Console.WriteLine($"Patente: {patente}");
            Console.WriteLine("------------------------------\n");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            CombatenteAliado combatente1 = new CombatenteAliado("Boromir", "Humano", "Capitão");

            CombatenteAliado combatente2 = new CombatenteAliado("Gimli", "Anão", "Guerreiro");

            CombatenteAliado combatente3 = new CombatenteAliado("Legolas", "Elfo", "Arqueiro Mestre");

            combatente1.ApresentarUnidade();
            combatente2.ApresentarUnidade();
            combatente3.ApresentarUnidade();

        }
    }
}