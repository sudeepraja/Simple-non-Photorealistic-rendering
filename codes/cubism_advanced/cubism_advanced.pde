void setup() {
  PImage img = loadImage("1.JPG");
  PImage imgc= loadImage("1.JPG");
  PImage imgo = createImage(img.width, img.height,RGB);
  size(img.width, img.height,P2D);
  smooth();
  int s= (img.width + img.height)/60;
  imgo.loadPixels();
  imgc.loadPixels();
  for (int i = 0; i < imgc.pixels.length; i++) {
    imgo.pixels[i] = color(255);
  }
  int px, py, nx, ny,dx,dy,n;
//    for(px=0;px<width;px++){
//      for(py=0;py<height;py++){
//        
//    int pix=2;
//    for (int j=0;j<pix;j++) {
//      nx=px+(int)random(-2, +2);
//      ny=py+(int)random(-2, +2);
//      if(nx+width*ny>=0 && nx+width*ny<width*height)imgc.pixels[nx+width*ny] = imgc.pixels[px + width*py];
//  }
//}
//}
  
  imgo.updatePixels();
  for(int i=0;i<100;i++){
    image(imgo, 0, 0);
    img.loadPixels();
    fill(0);
    strokeWeight(2);
    stroke(255,0,0);
    px=(int)random(width);
    py=(int)random(height);
    color p;
    int r=(int)random(0,2);
    r=1;
    if(r==0){ellipse(px,py,random(s,s*s),random(s,s*s));}
    else if(r==1){quad(px,py,px+random(-s,s),py+random(s,s*s),px+random(s,s*s),py+random(s,s*s),px+random(s,s*s),py+random(-s,s));}
    //else if(r==2){rect(px,py,random(s,s*s),random(s,s*s),random(.5*s,s),random(.5*s,s),random(.5*s,s),random(.5*s,s));}
    dx=(int)random(-s,s);
    dy=(int)random(-s,s);
    loadPixels();
    for(nx=0;nx<img.width;nx++){
      for(ny=0;ny<img.height;ny++){
        p = pixels[nx+width*ny];
        n = (nx+dx)+ width*(ny+dy);
        if(red(p)==0 && green(p)==0 && blue(p)==0){
          if(n>=0 && n<width*height-1)img.pixels[n]=imgc.pixels[nx+width*ny];
        }
        else if(red(p)==255 && green(p)==0 && blue(p)==0){
          if(n>=0 && n<width*height-1)img.pixels[n]=color(0);
        }
    }
    }
  img.updatePixels();
  }
  image(img,0,0);
  save("cubism_adv.jpg");
}

