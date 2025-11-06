mport java.util.ArrayList;

public class Main {
    public static void main(String[] args) {

        Mago howl = new Mago("Mago Howl", 30, "Magia de Fogo e Portais");
        System.out.println("Personagem criado: " + howl.getNome());
        System.out.println("Idade: " + howl.getIdade());
        System.out.println(howl.lancarFeitico());
        System.out.println("---");

        Divisao sala = new Divisao("Sala Principal");
        Divisao quartoHowl = new Divisao("Quarto do Howl");

        ArrayList<Divisao> divisoesIniciais = new ArrayList<>();
        divisoesIniciais.add(sala);
        divisoesIniciais.add(quartoHowl);

        Castelo casteloAnimado = new Castelo("Castelo Animado", divisoesIniciais);
        System.out.println("Castelo criado: " + casteloAnimado.getNome());
      
        System.out.println("Adicionando nova divisão...");
        Divisao cozinha = new Divisao("Cozinha do Calcifer");
        casteloAnimado.adicionarDivisao(cozinha);

        System.out.println("Divisões no " + casteloAnimado.getNome() + ":");
        for (Divisao d : casteloAnimado.getDivisoes()) {
            System.out.println("- " + d.getNome());
        }
    }
}
