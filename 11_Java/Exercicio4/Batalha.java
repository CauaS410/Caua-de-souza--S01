import java.util.HashMap;
public class Batalha {
    
    private HashMap<String, Boss> arena;

    public Batalha(HashMap<String, Boss> arena) {
        this.arena = arena;
    }

    public void adicionarBoss(Boss boss) {
        if (this.arena != null && boss != null) {
            this.arena.put(boss.getIdBoss(), boss);
            System.out.println("Boss " + boss.getNome() + " adicionado à arena.");
        }
    }

    public void iniciarBatalha(String idBoss) {
      
        Boss bossEncontrado = this.arena.get(idBoss);

        if (bossEncontrado != null) {
            System.out.println("\n*** BATALHA INICIADA COM: " + bossEncontrado.getNome() + " (ID: " + idBoss + ") ***");
          
            bossEncontrado.iniciarFase();
            
        } else {
            System.out.println("\n*** ERRO: Boss com ID '" + idBoss + "' não encontrado na arena. ***");
        }
    }
}
