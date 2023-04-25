class Button {
  int x, y, w, h;
  color c;
  String label;

  Button(int x, int y, int w, int h, color c, String label) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.label = label;
  }
  
  void display(){
      fill(c);
      rect(x,y,w,h);
      fill(0);
      textSize(50);
      text(label,x+20,y+h/1.5);
      
  }
  
  boolean trykMus(){
      if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && mousePressed) {
      return true;    
    }
    else {
      return false;
    }

  }
  
  
}
