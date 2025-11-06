public class Alien extends Entidade {

    private Poder poder;
    

    private String planetaOrigem;
    private String ovni;

    public Alien(String nome, String localizacao, Poder poder, String planetaOrigem, String ovni) {
        super(nome, localizacao);
        
        this.poder = poder;
        this.planetaOrigem = planetaOrigem;
        this.ovni = ovni;
    }

    @Override
    public String obterCoordenadas() {
        return this.localizacao + " [Alien do Planeta: " + this.planetaOrigem + "]";
    }

    public Poder getPoder() { return poder; }
    public String getPlanetaOrigem() { return planetaOrigem; }
    public String getOvni() { return ovni; }
}
