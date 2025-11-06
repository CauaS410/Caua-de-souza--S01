public class BossMagico extends Boss {


    public BossMagico(String nome, String idBoss, String pontoFraco) {
        super(nome, idBoss, pontoFraco);
    }

    @Override
    public void iniciarFase() {
        System.out.println("O " + getNome() + " conjura magias ancestrais!");
        System.out.println("Ponto fraco: " + getPontoFraco() + " (magia oposta)");
        System.out.println("--- Feitiços ---");
        
        for (PadraoAtaque ataque : getMoveset()) {
            System.out.println("- " + ataque.toString());
        }
        System.out.println("O ar se enche de energia!");
    }
}
