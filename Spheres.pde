int N = 200;
float[][] pos = new float[N][3];
float angle = 0;
void setup() {
  size(500, 500, P3D);
  for (int i=1; i<N; i++) {
    pos[i][0] =pos[i-1][0] + random(-3,3);
    pos[i][1] =pos[i-1][1] + random(-3,3);
    pos[i][2] =pos[i-1][2] + random(-3,3);
  }
}

void draw() {
  clear();
  noStroke();
  fill(200);
  ambientLight(70, 70, 10); 
  pointLight(51, 102, 255, 65, 60, 100); 
  pointLight(200, 40, 60, -65, -60, -150);
  for (int i=0; i<N; i++) {
    fill(i+50);
    pushMatrix();
    translate(width/2,height/2,width/2);
    rotateY(angle);
    rotateX(angle);
    translate(pos[i][0], pos[i][1],pos[i][2]);
    sphere(5);
    if(false){
    pos[i][0] =pos[i][0] + random(-1, 1);
    pos[i][1] =pos[i][1] + random(-1, 1);
    pos[i][2] =pos[i][2] + random(-1, 1);
    }
    popMatrix();
    
}
  angle+=0.01;
}
