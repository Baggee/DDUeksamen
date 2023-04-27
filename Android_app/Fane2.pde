class Fane2 extends Fane{
  Button b1, b2, b3, tf;
  
    ArrayList <TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
 
 Fane2(){
   
   
    b1 = new Button(00, 2040-dY, 360, 120, color(0,255,186), "Nedtrapning");
    b2 = new Button(360,2040-dY, 360, 120, color(255), "Cold Turkey");
    b3 = new Button(720,2040-dY, 360, 120, color(0,255,186), "Tips og Tricks");
    
    
 TEXTBOX dayField = new TEXTBOX(); 
 dayField.W = 300;
 dayField.H = 30;
 dayField.X = 400+(width - dayField.W)/2;
 dayField.Y = 450;
 textboxes.add(dayField);
  
 TEXTBOX hourField = new TEXTBOX(); 
 hourField.W = 300;
 hourField.H = 30;
 hourField.X = (width - hourField.W)/2;
 hourField.Y = 150;
 textboxes.add(hourField);
 
 TEXTBOX minField = new TEXTBOX(); 
 minField.W = 300;
 minField.H = 30;
 minField.X = (width - minField.W)/2;
 minField.Y = 650;
 textboxes.add(minField);

 }
 
 void display(){
     background(0,22,104);

   
  fill(0,255,186);
  rect(250,250,600,200,28);
  fill(255);
  noStroke();
  rect(270,270,150,80,15);
  rect(470,270,150,80,15);
  rect(680,270,150,80,15);
  


  b1.display();
  b2.display();
  b3.display();
  fill(255);
       text("Cold Turkey",400,220);
       
       for (TEXTBOX t: textboxes) {
  t.DRAW();
  }
 }

void trykMus(){
    if(b3.trykMus()){
    vistfane = f3;
    for(TEXTBOX t : textboxes){
 t.PRESSED(mouseX,mouseY); 
   }
   }
   if(b1.trykMus()){
     vistfane = f1;
   }
}

void trykKey(){
   for (TEXTBOX t : textboxes) {
  t.KEYPRESSED(key,keyCode); 
 }
}
}
