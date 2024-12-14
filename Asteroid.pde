class Asteroid extends Floater {
  private double rotSpeed;
  private int size;
  
  //public Asteroid() {
  
  //  super();
  //  myCenterX = (int)(Math.random()*600);
  //  myCenterY = (int)(Math.random()*600);
  //  myXspeed = (int)(Math.random()*3) + 1;
  //  myYspeed = (int)(Math.random()*3) + 1;
  //  myPointDirection = Math.random()*360;
  //  corners = 6;
  //  // why do we initialize using the syntax __ = new int[] {..};
  //  // instead of __ = {...}; like we normally would
  //  // is it because we have already declared it ?
  //  xCorners = new int[]{-11, 7, 13, 6, -11, -5};
  //  yCorners = new int[]{-8, -8, 0, 10, 8,    0};
  //  myColor = color(100);
    

  //  rotSpeed = (int)(Math.random()*3) + 1; 
  //  size = 3;
  //}
    public Asteroid() {
  
    super();
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myXspeed = (int)(Math.random()*3) + 1;
    myYspeed = (int)(Math.random()*3) + 1;
    myPointDirection = Math.random()*360;
    corners = 6;
    // why do we initialize using the syntax __ = new int[] {..};
    // instead of __ = {...}; like we normally would
    // is it because we have already declared it ?
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8,    0};
    myColor = color(100);
    

    rotSpeed = (int)(Math.random()*3) + 1; 
    size = 3;
  }
    public Asteroid(float x, float y) {
    super();
    myCenterX = x;
    myCenterY = y;
    myXspeed = (int)(Math.random()*3) + 1;
    myYspeed = (int)(Math.random()*3) + 1;
    myPointDirection = Math.random()*360;
    corners = 6;
    // why do we initialize using the syntax __ = new int[] {..};
    // instead of __ = {...}; like we normally would
    // is it because we have already declared it ?
    xCorners = new int[]{-11, 7, 13, 6, -11, -5};
    yCorners = new int[]{-8, -8, 0, 10, 8,    0};
    myColor = color(200);
    

    rotSpeed = (int)(Math.random()*3) + 1; 
    size = (int)(Math.random()*3) + 1;
  }
  
  public double getX() {
    return myCenterX;
  }
  
  public double getY() {
    return myCenterY;
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public int ranNum() {
    return (int)(Math.random()*3)+1;
  }
}
