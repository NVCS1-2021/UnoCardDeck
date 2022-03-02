public class Hand {
  public Card[] cards = new Card[7];
  
  public Hand(Card[] cards) {
    this.cards = cards;
  }
  
  public void show() {
    
  }
  
  public void place() {
    
  }
  
  public Card biggestAttack(Card[] eligibles) {
    
    return eligibles[0];
  }
  
  public Card bestCard(color c, int num) {
    
    return cards[0];
  }
  
  public Card[] eligibleCards() {
    Card[] eligibles = cards;
    return eligibles;
  }
  
}
