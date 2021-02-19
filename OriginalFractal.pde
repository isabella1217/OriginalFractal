public void setup(){
  size(900,900);
  rectMode(CENTER);
 
}
public void draw(){
  
  background(0);
  myFractal(450,450,380);
 
}
public void myFractal (int x, int y, int siz){
  frameRate(10);
  int myColor = color((int)(Math.random()*20), (int)(Math.random()*80), (int)(Math.random()*200));
  fill(myColor);
  ellipse(x,y,siz,siz);
  if (siz>1){
    myFractal(x+siz/2, y, siz/2);
    myFractal(x-siz/2, y, siz/2);
    myFractal(x, y+ siz/12, siz/2);
  }
}
