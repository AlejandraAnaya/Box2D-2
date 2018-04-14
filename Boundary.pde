class Boundary {

  float x1, y1;
  float w1, h1; 

  Body b; 

  Boundary(float x1_, float y1_, float w1_, float h1_, float a) {
    x1 = x1_; 
    y1 = y1_; 
    w1 = w1_;
    h1 = h1_; 

    PolygonShape psd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w1/2);
    float box2dH = box2d.scalarPixelsToWorld(h1/2);
    psd.setAsBox(box2dW, box2dH);    
    BodyDef bd = new BodyDef(); 
    bd.type = BodyType.STATIC; 
    bd.angle = a; 
    bd. position.set(box2d.coordPixelsToWorld(x1, y1));
    b = box2d.createBody(bd); 
    b.createFixture(psd, 1);
  }

  void display() {

    fill(0); 
    stroke(0); 
    strokeWeight(1); 
    rectMode(CENTER); 
    float a = b.getAngle(); 
    pushMatrix(); 
    translate(x1, y1);
    rotate(-a);
    rect(0, 0, w1, h1);
    popMatrix();
    
  }

}