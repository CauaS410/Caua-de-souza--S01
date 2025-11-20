using System;

public abstract class MonstroSombrio
{
	protected string nome;
	
	public MonstroSombrio(string nome)
	{
		this.nome = nome;
	}
	
	public virtual void Mover()
	{
		Console.WriteLine("${nome} está se movendo...");
	}
}

public class Zumbi : MonstroSombrio
{
	public Zumbi(string nome) : base(nome)
	{
	}
  
  public override void Mover()
  {
  	Console.WriteLine($"{nome} anda lentamente... (Zumbi lerdo)");
  }
}

public class Espectro : MonstroSombrio
{
	public Espectro(string nome) : base(nome)
	{
	}

	public override void Mover()
  {
  	Console.WriteLine($"{nome} desliza rapidamente! (Espectro rápido)");
  }
}

public class Program
{
  public static void Main(string[] args)
  {
      Console.Write("Informe o número de monstros a serem criados: ");
          int quantidade = int.Parse(Console.ReadLine());
      
      MonstroSombrio[] monstros = new MonstroSombrio[quantidade];
      
      for(int i = 0; i < quantidade; i++)
    {
        Console.Write("Informe o tipo (zumbi/espectro): ");
        string tipo = Console.ReadLine().ToLower();

        Console.Write("Informe o nome do monstro: ");
        string nome = Console.ReadLine();

        if (tipo == "zumbi")
          monstros[i] = new Zumbi(nome);
        else if (tipo == "espectro")
          monstros[i] = new Espectro(nome);
        else
          {
            Console.WriteLine("Tipo inválido.");
          }
    }

      foreach (MonstroSombrio m in monstros)
      {
        m.Mover();
      }
  }
}
