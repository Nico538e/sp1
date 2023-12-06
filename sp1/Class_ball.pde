class Ball {
  float x = 50;
  float y = 50;
  float xspeed = 2;
  float yspeed = 2;
  int W = 50;
  float incrementSpeed = 0.2;
 
Ball(float tempX, float tempY, int tempW) {
  x = tempX;
  y = tempY;
  W = tempW;
  
}
  
void move() {
  y = y + yspeed;
  x = x + xspeed;
  
}

void bounce(){
    if(x <= 0 || x >= width - W){
    xspeed = -xspeed;
    xspeed += (xspeed > 0) ? incrementSpeed : - incrementSpeed;
  }
    if(y <= 0 || y >= height - W) {
    yspeed = -yspeed;
    yspeed += (yspeed > 0) ? incrementSpeed : - incrementSpeed;
  }
  
  x = constrain(x, 0, width - W);
  y = constrain(y, 0, height - W);
   
}
void display() {

  fill(110,140,50);
  stroke(0);
  ellipse(x,y,W,W);
}
}
