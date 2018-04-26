PVector[] clouds;

void setup() {
  size (800, 500);
  
  
  clouds = new PVector[3];
  
  for (int i = 0; i < clouds.length; i++){
     float x = random(0, width);
     float y = random(0, height/3);
     clouds[i] = new PVector(x, y);
  }
  
}

void draw() {
  background (#6C9EFF);
  noStroke();
   fill(#12A511);
   rect(0, 350, 800, 500);
   ellipse(800, 500, 500, 500);//sun
   ellipse(600, 400, 400, 200);
   
   
   
   
   //clouds
  
   for (int i = 0; i < clouds.length; i++) {
    // move each cloud
    clouds[i].add(1, 0);
    
    // reset if they go too far
    if (clouds[i].x - 105 > width) {
      clouds[i].x = -105;
      clouds[i].y = (int) random(50, height/4);
    }
   }
   
   fill(255);
   for(int i = 0; i < clouds.length; i++){
     ellipse(clouds[i].x, clouds[i].y, 100, 50);
   }
   // tree
   fill(#F9FA0A);
   ellipse(685, 77, 100, 100);
   fill(#64131D);
   rect(72, 190, 50, 200);
   fill(#12A511);
   ellipse(124, 150, 150, 150);
   ellipse(149, 185, 150, 150);
   ellipse(191, 203, 125, 125);
   ellipse(196, 134, 150, 150);
   ellipse(118, 88, 150, 150);
   ellipse(62, 124, 150, 150);
   ellipse(75, 150, 150, 150);
   ellipse(60, 187, 150, 150);

   
}
 
void mouseClicked(){
  println(mouseX, mouseY);
}