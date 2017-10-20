int x,y,r;
float alf;
void setup()
{
size(700,500);
r=75;

}
void draw()
{
  background(39,183,219);
  alf=alf+2;
  x=150+round(r*cos(PI*alf/180));
  y=250+round(r*sin(PI*alf/180));
  fill (252,236,58);
 
  ellipse(x,y,50,50);
  
  x=380+round(r*cos(PI*(alf+150)/180));
  y=250+round(r*sin(PI*(alf+150)/180));
  fill (255,216,0);
 
rect(x,y,75,100);
}
  