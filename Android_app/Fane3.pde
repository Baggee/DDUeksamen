class Fane3 extends Fane{
  Button b1, b2, b3, t1,t2;
  int index;
 Fane3(){
   
  
    b1 = new Button(00, 2040-dY, 360, 120, color(0,255,186), "Nedtrapning");
    b2 = new Button(360,2040-dY, 360, 120, color(0,255,186), "Cold Turkey");
    b3 = new Button(720,2040-dY, 360, 120, color(255), "Tips og Tricks");
    t1 = new FavoritKnap(780,370,50,50,color(255,230,0),"");

     index = int(random(tipliste.length));
    


 }
 
 void display(){
  background(0,22,104);
  fill(0);
  rect(250,250,600,300,28);
   fill(255);
   text("Tips og Tricks",400,220);
   text(tipliste[index],270,300); 

 

  b1.display();
  b2.display();
  b3.display();
  t1.display();
  

 

 }

void trykMus(){
   if(b1.trykMus()){
     vistfane = f1;
   }
 if(b2.trykMus()){
    vistfane = f2;
   }
 }
}
