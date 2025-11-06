public class CafeLeblanc {

    private Menu menu;

    public CafeLeblanc() {
        this.menu = new Menu();
    }

    public void receberPedido(Cafe cafe) {
        double preco = cafe.calcularPrecoFinal();
        
        System.out.println("Pedido recebido: " + cafe.getNome());
        System.out.println("Preço Final: R$ " + String.format("%.2f", preco));
        System.out.println("---");
    }

    public Menu getMenu() {
        return menu;
    }
}
