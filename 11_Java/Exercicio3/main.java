public class Main {
    public static void main(String[] args) {
        
        Poder poderFogo = new Poder("Fogo Fátuo");
        Poder poderLaser = new Poder("Raio Desintegrador");
        Poder poderPsiquico = new Poder("Controle Mental");

        Youkai raposa = new Youkai("Kitsune", "Floresta de Aokigahara", poderFogo);
 
        Alien zurg = new Alien("Zurg", "Setor Gama - Q 4", poderLaser, "Zetox", "Nave Imperial");
        

        Youkai kappa = new Youkai("Kappa", "Rio Asano", poderPsiquico);


        Registros detetivesOcultos = new Registros("Detetives Ocultos");

        
        System.out.println("Tentando registrar " + raposa.getNome());
        detetivesOcultos.registrarAvistamento(raposa); 

        System.out.println("\nTentando registrar " + zurg.getNome());
        detetivesOcultos.registrarAvistamento(zurg); 

        System.out.println("\nTentando registrar " + raposa.getNome() + " NOVAMENTE");
        detetivesOcultos.registrarAvistamento(raposa); 

        System.out.println("\nTentando registrar " + kappa.getNome());
        detetivesOcultos.registrarAvistamento(kappa); 

        detetivesOcultos.imprimirRegistros();
    }
}
