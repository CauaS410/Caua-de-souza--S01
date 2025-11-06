public class Main {
    public static void main(String[] args) {
        
        CafeLeblanc leblanc = new CafeLeblanc();

        Cafe cafeComum = new Cafe("Café da Casa (Sojiro's Blend)", 7.00);
        CafeGourmet cafeEspecial = new CafeGourmet("Blue Mountain (Gourmet)", 15.00, 4.50);

        leblanc.getMenu().adicionarItem(cafeComum);
        leblanc.getMenu().adicionarItem(cafeEspecial);

        System.out.println("### CAFE LEBLANC - RECEBENDO PEDIDOS ###");
        System.out.println("----------------------------------------");
        
        leblanc.receberPedido(cafeComum);
      
        leblanc.receberPedido(cafeEspecial);
    }
}
