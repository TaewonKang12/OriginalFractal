  int x = 0;
  int y = 0;
public void setup()
{
  size(1000, 1000);
}
public void draw()
{
  background(5,500);
  sig(100+x, 500+y, 700);
}
public void mouseDragged()
{
x=mouseX-450;
y=mouseY-750;
}
public void sig(int x, int y, int len) 
{
    if (len<20) {
      fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      noStroke();
      rect(x, y,len,len);
    } else {
      sig(x, y, len/3);
      sig(x+len/3, y, len/3);
      sig(x+len/3, y+len/3, len/3);
      sig(x, y+len/3, len/3);
    }
}

