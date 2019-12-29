 int wid = 2000;
  int h = 1000;
int col, row;
int scale = 20;

float flying;
float[][] grid;
void setup(){
  size(1024, 768, P3D);
 
  col = wid/scale;
  row = h/scale;
  grid = new float[col][row];
  float yoff= 0;
  for(int y = 0;y<row;y++){
    float xoff= 0;
    for(int x = 0;x<col;x++){
      grid[x][y] = map(noise(xoff,yoff), 0, 1 , -100, 100);
      xoff+=0.1;
    }
    yoff+=0.1;  
}
  
}

void draw(){
  flying-=.1;
  float yoff= flying;
  for(int y = 0;y<row;y++){
    float xoff= 0;
    for(int x = 0;x<col;x++){
      grid[x][y] = map(noise(xoff,yoff), 0, 1 , -150, 150);
      xoff+=0.1;
    }
    yoff+=0.1;  
}
  background(0);
  stroke(255);
      noFill();
      translate(width/2, height/2+50);
      rotateX(PI/2.8);
      //rotateX(PI/3);
 //     rotateZ(PI/3);
  translate(-wid/2, -h/2);      
  for(int y = 0;y<row-1;y++){
    beginShape(TRIANGLE_STRIP);
    for(int x = 0;x<col;x++){
      vertex(x*scale, y*scale, grid[x][y]);
      vertex(x*scale, (y+1)*scale, grid[x][y+1]);
      //rect(x*scale, y*scale, scale, scale);
    }endShape();
    
  }
 saveFrame("/home/ezio/Desktop/Output/item_####.png");
    
}
