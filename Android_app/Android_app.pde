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
}

void mousePressed() {
vistfane.trykMus();
}
