class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myColor = color(255);
  }
  
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
  
  public void move() {
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     
  }
  
  public void show() {
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
}
