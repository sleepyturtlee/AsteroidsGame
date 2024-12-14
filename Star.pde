class Star // note that this class does NOT extend Floater
{
  private int myCenterX, myCenterY;
  private float radius;
  private int myColor;
  public Star() {
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    radius = (int)(Math.random()*2);
    myColor = color(255, 255, 255);
  }
  
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse(myCenterX, myCenterY, radius, radius);
  }
}
