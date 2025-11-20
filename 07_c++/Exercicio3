using System;
using System.Collections.Generic;

public class Feitico
{
  public string nome;
  public string elemento;
  public int poder;

  public Feitico(string nome, string elemento, int poder)
  {
    this.nome = nome;
    this.elemento = elemento;
    this.poder = poder;
  }
}

public class Grimorio
{
	private List<Feitico> feiticos = new List<Feitico>();

  public void AdicionarFeitico(Feitico f)
  {
    feiticos.Add(f);
  }

  public void ListarFeiticos()
  {
    Console.WriteLine("Feitiços no Grimório:");
    foreach (Feitico f in feiticos)
    {
      Console.WriteLine($"- {f.nome} ({f.elemento}), poder {f.poder}");
    }
  }
}

public class Ferramenta
{
	public string nome;

  public Ferramenta(string nome)
  {
    this.nome = nome;
  }
}

public class Maga
{
	public string nome;
  public Grimorio grimorio;
  public List<Ferramenta> ferramentas;

  public Maga(string nome, List<Ferramenta> ferramentas)
  {
    this.nome = nome;
    this.grimorio = new Grimorio();
    this.ferramentas = ferramentas;
  }

  public void MostrarFerramentas()
  {
    Console.WriteLine($"\nFerramentas de {nome}:");
    foreach (Ferramenta f in ferramentas)
    {
      Console.WriteLine($"- {f.nome}");
    }
  }
}

public class Program
{
  public static void Main(string[] args)
  {
    List<Ferramenta> ferramentas = new List<Ferramenta>
    {
        new Ferramenta("Lanterna Mágica"),
        new Ferramenta("Capa de Viagem"),
        new Ferramenta("Mapa Antigo")
    };

    Maga frieren = new Maga("Frieren", ferramentas);

    frieren.grimorio.AdicionarFeitico(new Feitico("Bola de Fogo", "Fogo", 80));
    frieren.grimorio.AdicionarFeitico(new Feitico("Cura", "Luz", 50));

    frieren.grimorio.ListarFeiticos();
    frieren.MostrarFerramentas();
  }
}
