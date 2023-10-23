   Bob[] gly = new Bob[200];

void setup() {
  size(400, 400);
  for (int i = 0; i < gly.length; i++) {
    gly[i] = new Bob();
  }
}

void draw() {
  background(235,221,185);
  for (int i = 0; i < gly.length; i++) {
    gly[i].show();
    gly[i].levate();
  }
}

class Bob {
  int myX;
  float myY;
  float mySpeed;
 int mySize;
  color myColor;
boolean popped; 
  Bob() {
    popped = false; 
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySize = (int)(Math.random () * 50);
    mySpeed = mySize / 150.0;
    myColor = color(228,100,232);
  }

  void levate() {
    myX = myX + (int)(Math.random()*3 - 1);
    myY = myY + mySpeed;
    if (myY < -1000) {
      myY = 400;
    }
  }

  void show() {
    fill(myColor);
    stroke(myColor);
    if (dist (mouseX, mouseY, myX, myY) < mySize ) {
      popped = true; 
    } 
    if (popped == false) {
      fill (79, 38, 240);
ellipse ( myX, myY, mySize, mySize);
  }

}
}




