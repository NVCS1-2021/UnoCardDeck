public class Deck {
  public Card[] cards = new Card[40];
  
  public Deck() {
    spawnCards();
  }
  
  public void show() {
   for(int i = 0; i < cards.length; i++) {
     cards[i].show(50,150);
   }
  }
  
  public void deal(Hand hand) {
    
  }
  int biggestHit = 0;
  private int biggestAttack() { //<>//
    for (int i = 0; i < cards.length; i++) {
     if ( cards[i].attack > biggestHit) {
      biggestHit = cards[i].attack;
      System.out.println(biggestHit);
     }
    }
    return biggestHit; 
  }
  
  private void spawnCards() {
    color[] colors = {
      #FF0000,
      #00FF00,
      #0000FF,
      #FFFF00
    };
    int cardInd = 0;
    for (int i = 0; i < colors.length; i++) {
      for (int n = 0; n < 10; n++) {
        cards[cardInd] = new Card(colors[i],n);
        cardInd++;
      }
    }
  }
}
