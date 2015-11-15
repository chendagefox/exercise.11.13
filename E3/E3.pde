PImage img ;
int radius = 10 ; 
int cols,rows,n;
int x=0,y=0;
float sumR,sumG,sumB;
void setup () {
  size(300, 300) ;
  img = loadImage("p1.jpg") ;  
  background(255);
  image(img,0,0);
}

void draw() {
  loadPixels();
  n =0;
  sumR=sumG=sumB=0;
  
  
}
void mouseReleased (){
  x = mouseX;
  y = mouseY;
  
  for (int rows=0; rows<img.height ; rows++){
    for (int cols=0;cols<img.width ;cols++){
      
      if(int(dist(x,y,cols,rows)) <= radius ){  
        int loc = cols+rows*img.width;
        sumR = sumR + red(img.pixels[loc]);
        sumG = sumG + green(img.pixels[loc]);
        sumB = sumB + blue(img.pixels[loc]);
        n ++;
      } 
    }
  }
  
  fill(sumR/n,sumG/n,sumB/n);
  noStroke();
  ellipse(x,y,10,10);
  
  
}
