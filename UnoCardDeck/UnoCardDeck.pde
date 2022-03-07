Deck deck;
Card[] showCards = new Card[20];
Button showDeckBtn;
Hand player1Hand;

public void setup() {
  size(800,600);
  textAlign(CENTER, CENTER);
  deck = new Deck();
  showDeckBtn = new Button(new PVector(20,20),"Show Deck");
}

public void draw() { //<>//
  background(220);
  for(int i = 0; i < showCards.length; i++) {
    showCards[i].show();
  }
  showDeckBtn.show(); //<>//
  if (showDeckBtn.isOn) {
    deck.show(); 
  }
}

public void mousePressed() {
  showDeckBtn.isClicked();
}
