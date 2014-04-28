void setup() {
  PImage img = loadImage("2.jpg");
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
  int px, py, nx, ny;
  for (int i=0; i<width; i+=s+random(-.25*s,.25*s)) {
    for(int j=0;j<height;j+=s+random(-.25*s,.25*s)){
      color c = img.pixels[i + width*j];
      fill(color(red(c)+(int)random(-20,20),green(c)+(int)random(-20,20),blue(c)+(int)random(-20,20),random(100,255)));
      rect(i, j,random(s,2*s),random(s,2*s),random(0.5*s,s),random(0.5*s,s),random(0.5*s,s),random(0.5*s,s));
    }
  }
  save("divisionism.jpg");
}
