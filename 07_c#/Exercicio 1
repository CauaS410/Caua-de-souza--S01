using System;

public class MembroDaSociedade
{
  private string nome;
  private string raca;
  private string funcao;

  public MembroDaSociedade(string nome, string raca, string funcao)
  {
    this.nome = nome;
    this.raca = raca;
    this.funcao = funcao;
  }

  public void descrever()
  {
    Console.WriteLine($"Nome: {nome}");
    Console.WriteLine($"Raça: {raca}");
    Console.WriteLine($"Função: {funcao}");
	  Console.WriteLine(" ");
  }
}

public class Program
{
  public static void Main(string[] args)
  {
    MembroDaSociedade membro1 = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
    MembroDaSociedade membro2 = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");

    membro1.descrever();
    membro2.descrever();
  }
}
