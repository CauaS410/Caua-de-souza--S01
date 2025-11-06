import java.util.ArrayList;
public class Menu {

    private ArrayList<Cafe> items;

    public Menu() {
        this.items = new ArrayList<>();
    }

    public void adicionarItem(Cafe cafe) {
        this.items.add(cafe);
    }

    public ArrayList<Cafe> getItems() {
        return items;
    }
}
