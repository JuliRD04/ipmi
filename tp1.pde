PImage paisaje3;
void setup(){
  println(mouseX + "/cv " + mouseY);{
}
  size(800, 400);{
}
  paisaje3=loadImage("paisaje3.jpg");
}

void draw(){
  println(mouseX,  "/" , mouseY);
  background(37, 36 , 64);
  fill(197,169,0);
 rect(400,180,400,225);
 fill(255);
 triangle(535,60,660,180,350,180);
 triangle(800,100,480,180,800,180);
  triangle(635,60,480,180,900,180);
  image(paisaje3, 0,0);
  fill(255,0,128);
  rect(400,180,400,8);
  ellipse(502,150,45,40);
  fill(108,59,42);
  rect(500,150,3,30);
 
}
