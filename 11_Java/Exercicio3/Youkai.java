public class Youkai extends Entidade {
    
    private Poder poder;
    public Youkai(String nome, String localizacao, Poder poder) {
        super(nome, localizacao);
        
        this.poder = poder;
    }

    @Override
    public String obterCoordenadas() {
        return this.localizacao + " [Poder de Youkai: " + poder.getNome() + "]";
    }
    
    public Poder getPoder() {
        return poder;
    }
}
