//Julian Rodriguez Diaz
//Comision 2
//Legajo: 91443/6
PImage ilusion;
int i=0;
void setup(){
  size(800, 400);
  ilusion = loadImage("ilusion.png");
}
void draw(){
  background(0);
  for(int i=0; i<width; i+=56){
    strokeWeight(16);
    line(i,0,i,400);
  }
  for(int i=0; i<height; i+=59){
    stroke(135);
    line(0,i,800,i);
    image(ilusion, -38, 0);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(392,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(448,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(504,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(560,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(616,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(672,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(728,i,23);
}
for(int i=0; i<width; i+=59){
  strokeWeight(0);
  circle(784,i,23);
}
image(ilusion, -38, 0);
}
