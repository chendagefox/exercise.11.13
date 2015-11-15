int cols = 100;
int rows = 100;
int x=0,y=0;
void setup() {
  size(500,500);
  
}

int nowDist = 1000 ; 
float Dist=0;
void draw() {
  background(0);
  for (int rows=0; rows<100 ; rows++){
    for (int cols=0;cols<100;cols++){
      
      if(int(dist(x,y,cols,rows)) == nowDist ){  
        fill(255);
      } else {fill(#888888);}
      rect(cols*5,rows*5,5,5);} 
    }
      nowDist ++;
}
   

void mouseReleased (){
  x = int(mouseX/5);
  y = int(mouseY/5);
  nowDist =1;
}
