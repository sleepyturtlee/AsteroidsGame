class Star // note that this class does NOT extend Floater
{
  private int myCenterX, myCenterY;
  private float radius;
  public Star() {
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    radius = (float)(Math.random()*2);
  }
  
  public void show() {
    fill(255);
    ellipse(myCenterX, myCenterY, radius, radius);
  }
}
