int x=50;
int y=50;
int r=10;
int score=0;

void setup() {
  size(750,650);
}
void draw() {
 PImage imagen=loadImage("570242.jpg");
 PImage imagene=loadImage("1.jpg");
 PImage img=loadImage("g661387.jpg");
 PImage end=loadImage("end.jpg");
 text("Score:",200,100); 
 background(255);
 
 image(imagen,600,450, 100,75);
 image(imagen,550,150, 110,85);
 image(imagene,250,400, 110,85);
 image(imagene, 300,150,110,85);
  if (x==250&&y==400||x==300&&y==150) {
 image(end, width/2,height/2,250,250);
 }
 if (x==600&&y==450||x==550&&y==150) {
  score=score+1;
 }

 image(img, x, y,150, 100);
}
void keyPressed() 
{ 
if ( key == CODED ) 
{ 
if ( keyCode == RIGHT) 
{ x += 50;} 

else if ( keyCode == LEFT ) 
{ x -= 50;} 

else if ( keyCode == UP ) 
{ y -= 50;} 

else if ( keyCode == DOWN ) 
{ y += 50;} 
} 
x = constrain( x, r, width-r ); 
y = constrain( y, r, height-r ); 
}