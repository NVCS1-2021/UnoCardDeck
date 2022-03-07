public class Deck {
  public Card[] cards = new Card[40];
  
  public Deck() {
    spawnCards();
  }
  
  public void show() {
    rect(170,150,70,50);
    color(50);
   text('O',cards[i].x,cards[i].y);
  }
  
  public void deal(Hand hand) {
    
  }
  
  private int biggestAttack() {
       Card bigAtt = cards[0];
    for(int i = 0; i <cards.length; i++) {
     if(cards[i].attack > bigAtt.attack) {
      bigAtt = cards[i]; 
     }
    }
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
