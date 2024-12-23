class Spaceship extends Floater {
  public Spaceship() {
    myCenterX = 300;
    myCenterY = 300;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0; // 0 = point towards right
    
    // when designing the "fancier" spaceship, remember to
    // replace corners, and xCorners + yCorners
    //corners = 4;
    //xCorners = new int[]{-8,  16,  -8, -2};
    //yCorners = new int[]{-8,  0,  8,    0};
    corners = 10;
    xCorners = new int[]{-8, -2, -2, 8, 16,  8, -2,  -2, -8, -2};
    yCorners = new int[]{ 8,  6, 10, 3,  0, -2, -10, -6, -8,  0};
    myColor = (#EFC3CA);
   
  }
  

  
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
  
  public double getPointDirection() {
    return myPointDirection;
  }
  
  public double getXspeed() {
    return myXspeed;
  }
  
  public double getYspeed() {
    return myYspeed;
  }
  
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random() * 601);
    myCenterY = (int)(Math.random() * 601);
    myPointDirection = (Math.random() * 360);
  }
  
}
