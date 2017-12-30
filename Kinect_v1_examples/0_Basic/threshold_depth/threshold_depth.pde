import org.openkinect.processing.*;

Kinect kinect;
//float b[512][424];

void setup(){
 size(640,480);
 kinect= new Kinect(this);
 kinect.initDepth();
 //kinect.initDevice();
}

void draw(){
  background(0);
  
  PImage img = kinect.getDepthImage();
  
  int[] depth = kinect.getRawDepth();
  //image(img, 480,0);
  float minThresh = 480.0;
  float MaxThresh = 830.0;
  //int skip =20;
  for (int x=0; x<img.width;x++){
    for (int y=0; y<img.height;y++){
      int index = x+y*img.width;
      int d = depth[index];
       
      if(d>minThresh && d < MaxThresh && x>100)
      {img.pixels[index]=color(255,0,150);}
      else{img.pixels[index]=img.pixels[index];}
      
  }
  }
  img.updatePixels();
  image(img,0,0);

}