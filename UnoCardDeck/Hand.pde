public class Hand {
  public Card[] cards = new Card[7];
  
  public Hand(Card[] cards) {
    this.cards = cards;
  }
  
  public void show() {
    for (int i = 0; i < cards.length; i++) {
      if (showDeckBtn.isOn) {
     cards[i].show(25 * i, 50); 
    }
  }
  }
  
  public void place() {
    
  }
  
  public Card biggestAttack() {
    
    return cards[0];
  }
  
  public Card bestCard(color c, int num) {
    
    return cards[0];
  }
  public Card[] eligibleCards() {
   Card[] eligibles = cards;
   return eligibles;
  }
}
