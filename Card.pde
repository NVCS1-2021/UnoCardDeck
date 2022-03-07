public class Card {
  public final int WIDTH = 50, HEIGHT = 100;
  public color c;
  public int num, attack;
  public boolean isDealt;
  
  public Card(color c, int num) {
    this.c = c;
    this.num = num;
    this.attack = (int) random(10);
    this.isDealt = false;
  }
  
  public void show(int x, int y) {
    fill(c);
    rect(x, y, WIDTH, HEIGHT);
    fill(255);
    circle(x,y,WIDTH / 2);
    text(num,x + WIDTH / 2, y + HEIGHT / 2);
  }
}
