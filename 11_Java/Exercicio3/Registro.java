import java.util.HashMap;
public class Registros {
    
    private String nomeEquipe;

    private HashMap<String, Entidade> avistamentos;

    public Registros(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
        this.avistamentos = new HashMap<>(); 
    }

    public boolean registrarAvistamento(Entidade entidade) {
  
        String nomeEntidade = entidade.getNome();


        if (avistamentos.containsKey(nomeEntidade)) {

            System.out.println("-> Erro: " + nomeEntidade + " já foi registrado.");
            return false;
        }


        avistamentos.put(nomeEntidade, entidade);
        System.out.println("-> Sucesso: " + nomeEntidade + " registrado.");
        return true;
    }

   
    public void imprimirRegistros() {
        System.out.println("\n### Registros da Equipe: " + this.nomeEquipe + " ###");
        if (avistamentos.isEmpty()) {
            System.out.println("Nenhum avistamento registrado.");
            return;
        }
        
        for (Entidade entidade : avistamentos.values()) {
            System.out.println(
                "- Nome: " + entidade.getNome() + 
                " | Visto em: " + entidade.obterCoordenadas()
            );
        }
    }
}
