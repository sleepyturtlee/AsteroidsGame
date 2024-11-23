Spaceship falcon;
Star[] stars = new Star[100];
public void setup() {
  size(600, 600);
  falcon = new Spaceship();
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

public void draw() {
  background(0);
  
  // show a bunch of pretty stars
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  
  falcon.move();
  falcon.show();
  
  // player controls
  if(accelerateButton == true) {
    falcon.accelerate(.05);
  }
  if(turnLeftButton == true) {
    falcon.turn(-2);
  }
  if(turnRightButton == true) {
    falcon.turn(2);
  }
  if(hyperspaceButton == true) {
    hyperspaceButton = false;
    falcon.hyperspace();
  }
}

boolean accelerateButton = false;
boolean turnLeftButton = false;
boolean turnRightButton = false;
boolean hyperspaceButton = false;
public void keyPressed() {
  if(key == 'w' || key == 'W') {
    accelerateButton = true;
  }
  else if(key == 'a' || key == 'A') {
    turnLeftButton = true;
  }
  else if(key == 'd' || key == 'D') {
    turnRightButton = true;
  }
  else if(key == 'q' || key == 'Q') {
    hyperspaceButton = true;
  }
}  
public void keyReleased() {
  
  if(key == 'w' || key == 'W') {
    accelerateButton = false;
  }
  else if(key == 'a' || key == 'A') {
    turnLeftButton = false;
  }
  else if(key == 'd' || key == 'D') {
    turnRightButton = false;
  }
  else if(key == 'q' || key == 'Q') { // lines 76-78 aren't really needed, just doing it for consistency
    hyperspaceButton = false;
  }  
}
