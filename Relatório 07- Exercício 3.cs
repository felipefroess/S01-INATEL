using System;
using System.Collections.Generic;

namespace JornadaFrieren
{
    public class ReliquiaMagica
    {
        public string NomeItem { get; set; }
        public ReliquiaMagica(string nome) => NomeItem = nome;
    }

    public class BauDeReliquias
    {
        private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>();

        public void GuardarItem(ReliquiaMagica item)
        {
            reliquias.Add(item);
            Console.WriteLine($"Relíquia '{item.NomeItem}' guardada no baú.");
        }

        public void ListarReliquias()
        {
            Console.WriteLine("Relíquias no Baú:");
            reliquias.ForEach(r => Console.WriteLine($"- {r.NomeItem}"));
        }
    }

    public class ItemDeAcampamento
    {
        public string Nome { get; set; }
        public ItemDeAcampamento(string nome) => Nome = nome;
    }

    public class Maga
    {
        public string Nome { get; set; }
        
        public BauDeReliquias Bau { get; private set; }

        public List<ItemDeAcampamento> KitAcampamento { get; set; }

        public Maga(string nome, List<ItemDeAcampamento> kitExterno)
        {
            Nome = nome;
            Bau = new BauDeReliquias();
            KitAcampamento = kitExterno; 
        }
    }

    class Program
    {
        static void Main(string[] args)
        {

            List<ItemDeAcampamento> itensSobrevivencia = new List<ItemDeAcampamento>
            {
                new ItemDeAcampamento("Saco de Dormir"),
                new ItemDeAcampamento("Pote de Cozinha")
            };

            Maga frieren = new Maga("Frieren", itensSobrevivencia);

            frieren.Bau.GuardarItem(new ReliquiaMagica("Anel de Prata"));
            frieren.Bau.GuardarItem(new ReliquiaMagica("Grimório Antigo"));

            Console.WriteLine($"\n--- Kit de Acampamento da {frieren.Nome} ---");
            foreach (var item in frieren.KitAcampamento)
            {
                Console.WriteLine($"Item: {item.Nome}");
            }
            
            Console.ReadKey();
        }
    }
}