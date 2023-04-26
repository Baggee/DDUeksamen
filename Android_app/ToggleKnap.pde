boolean FavoritKnap = false;
class FavoritKnap extends Button{
  FavoritKnap(int x, int y, int w, int h, color c, String label){super(x,y,w,h,c,label);}  

  void display(){
    strokeWeight(3);
    stroke(255,230,0);
    noFill();
    if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y + h && mousePressed) {
      fill(255,230,0);
      FavoritKnap = !FavoritKnap;
    }
    else {
      noFill();
    }
      rect(x,y,w,h);
      fill(0);
      textSize(50);
      text(label,x+20,y+h/1.5);

      noStroke();
  }
}
