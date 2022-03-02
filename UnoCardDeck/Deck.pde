public class Deck {
  public Card[] cards = new Card[40];
  public Hand hand;
  public Deck() {
    spawnCards();
  }
  
  public void show() {
    
  }
  
  public void deal(Hand hand) {
     Card[] cardlist = new Card[7];
     int i = 0;
     while (i < 7) {
      Card cardDrew = cards[(int)(Math.random()*41)];
      if (inList(cardDrew, cardlist) == false)
      {
       cardlist[i] = cardDrew;
       i++;
      }
     }
     hand = new Hand(cardlist);
  }
  private boolean inList(Card card, Card[] cardsArray){
    for (int i = 0; i < cardsArray.length; i++) {
      if (card == cardsArray[i]) {
        return false;
      }
    }
    return true;
  }
  private int biggestAttack() {
    
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
