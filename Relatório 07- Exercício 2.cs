using System;
using System.Collections.Generic;

namespace BatalhaPokemon
{
    public class CriaturaPokemon
    {
        public string Especie;

        public virtual void ExecutarMovimento()
        {
            Console.WriteLine($"{Especie} realiza um ataque genérico!");
        }
    }

    public class TipoFogo : CriaturaPokemon
    {
        public TipoFogo(string especie) 
        {
            this.Especie = especie;
        }

        public override void ExecutarMovimento()
        {
            Console.WriteLine($"{Especie} lança uma rajada de chamas escaldantes!");
        }
    }

    public class TipoAgua : CriaturaPokemon
    {
        public TipoAgua(string especie)
        {
            this.Especie = especie;
        }

        public override void ExecutarMovimento()
        {
            Console.WriteLine($"{Especie} dispara uma bolha de água pressurizada!");
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            List<CriaturaPokemon> pokedex = new List<CriaturaPokemon>();

            TipoFogo fogo1 = new TipoFogo("Scorbunny");
            TipoAgua agua1 = new TipoAgua("Greninja");

            pokedex.Add(fogo1);
            pokedex.Add(agua1);

            Console.WriteLine("--- Início da Batalha ---");
            foreach (var pokemon in pokedex)
            {
                pokemon.ExecutarMovimento();
            }
            Console.WriteLine("-------------------------");

            Console.ReadKey();
        }
    }
}