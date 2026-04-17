using System;
using System.Collections.Generic;

namespace BibliotecaMiskatonic
{
    public abstract class AbominacaoCosmica
    {
        public string Nome { get; set; }

        public abstract void Manifestar();
    }

    public class Shoggoth : AbominacaoCosmica
    {
        public Shoggoth(string nome) => Nome = nome;

        public override void Manifestar()
        {
            Console.WriteLine($"[{Nome}]: A massa de protoplasma se arrasta borbulhando, " +
                              "moldando órgãos e olhos conforme avança.");
        }
    }

    public class CacadorAlado : AbominacaoCosmica
    {
        public CacadorAlado(string nome) => Nome = nome;

        public override void Manifestar()
        {
            Console.WriteLine($"[{Nome}]: A criatura bate suas asas membranosas, " +
                              "mergulhando do vácuo estelar em um voo silencioso.");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {

            List<AbominacaoCosmica> catalogoHorrores = new List<AbominacaoCosmica>();

            catalogoHorrores.Add(new Shoggoth("Shoggoth Ancestral"));
            catalogoHorrores.Add(new CacadorAlado("Morte Alada"));

            Console.WriteLine("--- Relatos da Universidade Miskatonic --- \n");

            foreach (var horror in catalogoHorrores)
            {
                horror.Manifestar();
                Console.WriteLine(); 
            }

        }
    }
}