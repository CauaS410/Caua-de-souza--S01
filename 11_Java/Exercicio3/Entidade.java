public abstract class Entidade implements IRastreavel {
    protected String nome;
    protected String localizacao;

    public Entidade(String nome, String localizacao) {
        this.nome = nome;
        this.localizacao = localizacao;
    }

    public String getNome() {
        return nome;
    }

    public String getLocalizacao() {
        return localizacao;
    }
    @Override
    public abstract String obterCoordenadas();
}
