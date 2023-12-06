Ball ball1;

void setup() {
  size(600,400);
  
  ball1 = new Ball(0,0,16);
}

void draw() {
 // background(255);
  ball1.display();
  ball1.move();
  ball1.bounce();

}
