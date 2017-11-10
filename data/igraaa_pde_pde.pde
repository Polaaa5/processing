int x=50;
int y=50;
int r=10;
int score=0;
import processing.sound.*;
SoundFile file;

void setup() {
  size(750,650);
  file=new SoundFile(this,"Pesnya_pro_sledy.mp3");
  file.play();
  Image imagen=loadImage("570242.png"); PImage imagene=loadImage("1.png");
  Image img=loadImage("g661387.png");
  Image end=loadImage("end.jpg");
  Image happy=loadImage("happy.png");
 
}
void draw() {
 

 background(25,240,30);
 text("Score:",5,10); 
 
 PImage image(imagen,550,450,75,100);
 PImage image(imagen,500,150, 75,100);
 PImage image(imagene,250,400, 90,85);
 PImage image(imagene, 300,150,90,85);
  if (x==250&&y==400) {
  PImage image(end,375,325,350,350);
 }
 if (x==300&&y==150) {
  PImage image(end,375,325,350,350);
 }
 if (x==550&&y==450) {
  score=score+1;
 }
 if (x==500&&y==150) {
   score=score+1;
 }
if (score==2) {
   PImage image(happy,375,325,350,350);
}
  PImage image(img,x,y,75,100);
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