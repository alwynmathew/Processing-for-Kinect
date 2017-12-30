import org.openkinect.processing.*;

Kinect kinect;

void setup(){
 size(512,424);
 kinect= new Kinect(this);
 kinect.initDepth();
 //kinect.initDevice();
}

void draw(){
  background(0);
  
  PImage img = kinect.getDepthImage();
  image(img, 0,0);

}