Deck deck;
Button showDeckBtn;
Hand player1Hand;

public void setup() {
  size(800,600);
  textAlign(CENTER, CENTER);
  deck = new Deck();
  showDeckBtn = new Button(new PVector(20,20),"Show Deck");
}

public void draw() { //<>// //<>// //<>//
  background(220);
  showDeckBtn.show(); //<>//
  if (showDeckBtn.isOn) {
    deck.show(); 
  }
}

public void mousePressed() {
  showDeckBtn.isClicked();
}
