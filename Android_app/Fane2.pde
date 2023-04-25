class Fane2 extends Fane{
  Button b1, b2, b3;
 
 Fane2(){
   
  
    b1 = new Button(00, 2040-dY, 360, 120, color(0,255,186), "Nedtrapning");
    b2 = new Button(360,2040-dY, 360, 120, color(255), "Cold Turkey");
    b3 = new Button(720,2040-dY, 360, 120, color(0,255,186), "Tips og Tricks");

 }
 
 void display(){
  background(0,22,104);

  b1.display();
  b2.display();
  b3.display();
  fill(255);
       text("Cold Turkey",400,200);

 }

void trykMus(){
    if(b3.trykMus()){
    vistfane = f3;
   }
   if(b1.trykMus()){
     vistfane = f1;
   }
}

}
