//week14_02_draw_lines_loadPixels_pixels_updatePixels
void setup(){
  size(500,500);
  background(255);
}
void draw(){
  //pixels
}
void mouseDragged(){
  if(mouseButton==LEFT){
    line(mouseX,mouseY,pmouseX,pmouseY);
    loadPixels();
    println(pixels[01]);
    for(int i=0;i<width*height;i++){
      if(pixels[i] !=-1)pixels[i]=color(random(255),random(255),random(255));
    }
    updatePixels();
  }
}
