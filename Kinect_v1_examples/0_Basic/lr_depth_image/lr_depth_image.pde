import org.openkinect.processing.*;

Kinect kinect;

void setup(){
 size(640,480);
 kinect= new Kinect(this);
 kinect.initDepth();
 //kinect.initDevice();
}

void draw(){
  background(0);
  
  PImage img = kinect.getDepthImage();
  image(img, 0,0);
  
  int skip =20;
  for (int x=0; x<img.width;x+=skip){
    for (int y=0; y<img.height;y+=skip){
      int index = x+y*img.width;
      //int col = img.pixels[index];
      float b = brightness(img.pixels[index]);
      fill(b);
      rect(x,y,skip,skip);
  }
  }

}