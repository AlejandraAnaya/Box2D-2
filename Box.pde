class Box{
float w,h; 
float x, y;
int i;

Body b; 
  
Box(float x_, float y_,float a, int i_){
  x = x_; 
  y = y_; 
  w = 102; 
  h = 131; 
  i = i_;

  
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    bd.position.set(posicionTransformada);
   
    b = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape =  sd;

      
    fd.density = 0.2;
    fd.friction = 0.5;
    fd.restitution = 1;
    
    b.createFixture(fd);
}

  void display(){
    Vec2 pos = box2d.getBodyPixelCoord(b);
    float angulo = b.getAngle();
    noStroke();
    
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-angulo);
    imageMode(CENTER); 
    image(skull[i],60, 0, 102,131);
    popMatrix();
      
    
         
  }


}