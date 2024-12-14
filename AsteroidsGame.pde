Spaceship falcon;
Star[] stars = new Star[100];
// number of times spaceship was hit by an asteroid
int timesHit = 0;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid> ();
ArrayList <Bullet> shots = new ArrayList <Bullet> ();

public void setup() {
  size(600, 600);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int i = 0; i < 10; i++) {
    asteroids.add(new Asteroid());
  }
  falcon = new Spaceship();
}

public void draw() {
  background(0);
  // show a bunch of pretty stars
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  falcon.show();
  falcon.move();
  // asteroids move
  for(int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
    double d = dist((float)falcon.getX(), (float)falcon.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
    // asteroid and ship collision
    if(d < 20) {
      // when removing the asteroids, decrease the increment (i--;),
      // as the arrayLists' size decreases, and everything moves over once
      asteroids.remove(i);
      i--;
      timesHit++;
    }
  }
  // bullets move
    for(int i = 0; i < shots.size(); i++) {
      shots.get(i).move();
      fill(255);
      shots.get(i).show();
    }
    // check for collisions between asteroids and bullets
    for(int i = 0; i < shots.size(); i++) {
      for(int r = 0; r < asteroids.size(); r++) {
        double d = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)asteroids.get(r).getX(),(float)asteroids.get(r).getY());
        if(d < 20) {
          shots.remove(i);
          asteroids.remove(r);
          i--;
          r--;
          break;
        }
      }
    }

  if(timesHit >= 3) {
    textAlign(CENTER);
    fill(0);
    rect(-1, -1, width + 1, height + 1);
    fill(255);
    textSize(50);
    text("Game over !", 300, 300);
    
    // try again button
    rect(300/2, 400, 300, 75);
  }

  // player controls
  if(accelerateButton == true) {
    falcon.accelerate(.02);
  }
  if(turnLeftButton == true) {
    falcon.turn(-5);
  }
  if(turnRightButton == true) {
    falcon.turn(5);
  }
  if(hyperspaceButton == true) {
    hyperspaceButton = false;
    falcon.hyperspace();
  }
  if(fireButton == true) {
    shots.add(new Bullet(falcon));
    for(int i = 0; i < shots.size(); i++) {
      shots.get(i).accelerate(6);
    }
    fireButton = false;
 
  }
}

boolean accelerateButton = false;
boolean turnLeftButton = false;
boolean turnRightButton = false;
boolean hyperspaceButton = false;
boolean fireButton = false;
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
  else if(key == ' ') {
    fireButton = true;
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
  else if(key == ' ') {
    fireButton = false;
  }
}
