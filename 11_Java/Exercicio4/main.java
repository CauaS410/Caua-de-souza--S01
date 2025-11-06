import java.util.HashMap;

public class Main {
    public static void main(String[] args) {
        
        PadraoAtaque socoPesado = new PadraoAtaque("Soco Pesado", 20);
        PadraoAtaque pisao = new PadraoAtaque("Pisão Devastador", 30);
        
        PadraoAtaque bolaDeFogo = new PadraoAtaque("Bola de Fogo", 40);
        PadraoAtaque nevasca = new PadraoAtaque("Nevasca", 45);

        
        Boss golem = new Boss("Golem de Pedra", "boss-001", "Água");
        golem.adicionarAtaque(socoPesado); 
        golem.adicionarAtaque(pisao);
        
        BossMagico lich = new BossMagico("Lich Antigo", "boss-002", "Fogo");
        lich.adicionarAtaque(bolaDeFogo); 
        lich.adicionarAtaque(nevasca);

        HashMap<String, Boss> mapaDaArena = new HashMap<>();

      
        Batalha arenaPrincipal = new Batalha(mapaDaArena);

      
        arenaPrincipal.adicionarBoss(golem);
        arenaPrincipal.adicionarBoss(lich);

        arenaPrincipal.iniciarBatalha("boss-002");
        
        arenaPrincipal.iniciarBatalha("boss-001");
        
        arenaPrincipal.iniciarBatalha("boss-999");
    }
}
