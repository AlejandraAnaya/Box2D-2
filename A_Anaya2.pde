import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import gifAnimation.*;
import processing.sound.*;


Box2DProcessing box2d;
Box una, dos, tres, cuatro, cinco, seis, siete, ocho, nueve; 
PImage [] skull = new PImage[9];
PImage uno;
ArrayList<Boundary> boundaries; 
int pant;
Gif fondo;
SoundFile file;

//PImage c1;
 PFont letra1; 
 PFont letra2;

float x2,y2,y3;


void setup() {
  size(600, 600); 
  
  letra1 = createFont("Letter Gothic Std", 20);
  letra2 = createFont("OCR A Std", 20);
  box2d = new Box2DProcessing(this); 
  box2d.createWorld();
  box2d.setGravity(0, -9.8);
  
  una = new Box(147,103,90,0); 
  dos = new Box(249,103, 30,1); 
  tres = new Box(351,103, 30,2); 
  cuatro = new Box(147, 234, 30,3); 
  cinco = new Box(249, 234, 30,4); 
  seis = new Box(351, 234, 30,5); 
  siete = new Box(147, 365, 30,6); 
  ocho = new Box(249, 365, 30,7); 
  nueve = new Box(351, 365, 30,8); 

 
  boundaries = new ArrayList<Boundary>();
  boundaries.add(new Boundary(width-5, height/2, 10, height, 0));
  boundaries.add(new Boundary(5, height/2, 10, height, 0));
  boundaries.add(new Boundary(width/4-2, height/4-145, width+310, 10, 0));
  boundaries.add(new Boundary(width/4-2, height-5, width+310, 10, 0));
  

 
  file = new SoundFile(this, "2.mp3");
  file.play();
  file.amp(0.2);
  
  //fondo = new Gif(this, "1.gif");
  //fondo.play();
  
   for (int i = 0; i < skull.length; i++){
    skull[i] = loadImage("skull"+i+".jpg");
   
  }
}


void draw() {
  
  box2d.step();
   
 // println(mouseX);
  
  background(255);
  letras(); 
  
  una.display();
  dos.display();
  tres.display();
  cuatro.display();
  cinco.display();
  seis.display();
  siete.display();
  ocho.display();
  nueve.display();
 
  for (Boundary wall : boundaries) {
    wall.display();
    
  
 // float box2dx = box2d.scalarPixelsToWorld(width/2);
 // float box2dy = box2d.scalarPixelsToWorld(height/2);
 
  
  
  }
}


void letras(){

 textFont(letra2); 
  textAlign(CENTER); 
  
  textSize(20);
  fill(0);
  
  x2 = width/2;
  y2 = height/2;

 // text("REALIDAD", width/2, height/2-250);
  x2 += random(-2, 2);
  y2 += random(-2, 4);
   
  
  text("REALIDAD", x2, y2-250);
  textSize(20); 
  //fill(255,100);
  fill(0,100);
  text("REALIDAD", x2, y2-255);
}