void setup() {
  PImage img = loadImage("1.JPG");
  PImage imgo = createImage(img.width, img.height, RGB);
  size(img.width, img.height,P2D);
  noStroke();
  img.loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    imgo.pixels[i] = img.pixels[i];
  }
  image(imgo, 0, 0);
  int s= (img.width + img.height)/200;
  int l=(img.width * img.height);
  int px, py, nx, ny;
  imgo.loadPixels();
  color orange=color(255,165,0);
  color red=color(255,0,0);
  color green=color(0,100,0);
  color blue=color(0,0,255);
  color yellow=color(218,165,32);
  color purple=color(153,50,204);
  color palatte[]={red,green,blue,yellow,orange,purple};
  for(int i=0;i<20;i++){
     px=(int)random(width);
     py=(int)random(height);
     color c = img.pixels[px + width*py];
     color p = palatte[(int)random(0,6)];
     for(int j=0;j<img.pixels.length;j++){
       color k=img.pixels[j];
       if(red(c)>red(k)-20 && red(c)<red(k)+20 && 
       green(c)>green(k)-20 && green(c)<green(k)+20 && 
       blue(c)>blue(k)-20 && blue(c)<blue(k)+20)imgo.pixels[j]=p;
     }
  }
  imgo.updatePixels();
  save("fauvism.jpg");
}
