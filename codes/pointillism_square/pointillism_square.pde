void setup() {
  PImage img = loadImage("IIT.JPG");
  PImage imgo = createImage(img.width, img.height, RGB);
  size(img.width, img.height,P2D);
  noStroke();
  imgo.loadPixels();
  img.loadPixels();
  for (int i = 0; i < img.pixels.length; i++) {
    imgo.pixels[i] = color(255);
  }
  image(imgo, 0, 0);
  int s= (img.width + img.height)/100;
  int l=(img.width * img.height);
  int px, py, nx, ny;
  for (int i=0; i<l; i++) {
    px=(int)random(width);
    py=(int)random(height);
    int pix=5;
    for (int j=0;j<pix;j++) {
      nx=px+(int)random(-2, +2);
      ny=py+(int)random(-2, +2);
      color c = img.pixels[px + width*py];
      fill(color(red(c)+(int)random(-20,20),green(c)+(int)random(-20,20),blue(c)+(int)random(-20,20),random(100,255)));
      quad(nx, ny, nx+random(s*.5,s),ny+random(0,s*.5),nx+random(s*.5,s),ny+random(s*.5,s),nx+random(0,s*.5),ny+random(s*.5,s));
    }
  }
  save("pointillis_square.jpg");
}
