public class Button {
  public PVector pos, size;
  public final int SCALE = 36;
  public String label;
  public boolean isOn;
  
  public Button(PVector pos, String label) {
    this.pos = pos;
    this.label = label;
    this.size = new PVector(3,2)
      .mult(SCALE);
    this.isOn = false;  
    
  }
  
  public void show() {
    fill(isOn ? 255 : 64);
    rect(pos.x, pos.y, size.x, size.y);
    fill(!isOn ? 255 : 64);
    textSize(SCALE * 0.5);
    text(label,pos.x + size.x / 2, pos.y + size.y / 2);
  }
  
  public boolean isClicked() {
    boolean isClicked = mouseX > pos.x
      && mouseX < pos.x + size.x
      && mouseY > pos.y
      && mouseY < pos.y + size.y;
    isOn = isClicked ? !isOn : isOn;
    return isClicked;
  }
}
