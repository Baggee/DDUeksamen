ArrayList <TEXTBOX> textboxes = new ArrayList<TEXTBOX>();

Fane vistfane;
Fane f1 = new Fane1();
Fane f2 = new Fane2();
Fane f3;

void setup(){
  size(1080,2400);
 vistfane=f1;
f3 = new Fane3();
}

void draw(){  
vistfane.display();

for (TEXTBOX t: textboxes) {
  t.DRAW();
  }
}

void mousePressed() {
vistfane.trykMus();
}

void InitLayout() {
 TEXTBOX receiver = new TEXTBOX(); 
 receiver.W = 300;
 receiver.H = 30;
 receiver.X = (width - receiver.W)/2;
 receiver.Y = 50;
 textboxes.add(receiver);
  
 TEXTBOX message = new TEXTBOX((width - 300)/2, 100, 300, 100);
 textboxes.add(message);
}
