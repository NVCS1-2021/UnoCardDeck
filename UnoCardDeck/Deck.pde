public class Deck {
  public Card[] cards = new Card[40];
  
  public Deck() {
    spawnCards();
  }
  
  public void show() {
    for (int i = 0; i < 40; i++) {
      cards[i].show(width/2, height/2 - 100);
    }
  }
  
  public void deal(Hand hand) {
    
  }
  
  private int biggestAttack() {
    cards[0].attack = 0;
    for (int i = 0; i < cards.length; i++) {
      System.out.println("Card: " + cards[i].attack);
      if (cards[i].attack > cards[0].attack) {
        cards[0].attack = cards[i].attack;
      }  
    }
    
    System.out.println("Max: " + cards[0].attack);
    return cards[0].attack; 
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
