class Floor{
  ArrayList<Node> nodesFLoor;
  boolean isSelected = false;
  float y1_pos, y2_pos; //posisi alas & posisi atap
  float h; //tinggi per lantai
  float scaleFloor;
  PImage imageTexture;
  String urlTexture;
  
  Floor(float tempY, float tempH, float tempScale, String tex) {
    h = tempH;
    y1_pos = tempY;
    y2_pos = y1_pos - h;
    imageTexture = loadImage(tex);
    urlTexture = tex;
    scaleFloor = tempScale;
  }
  
  void alas(float y_pos, float scaleFloor){
    pg[3].shapeMode(CENTER);
    pg[3].beginShape(POLYGON);
    for(int i = nodes.size()-1; i>=0; i--)
      pg[3].vertex((nodes.get(i).x-xCenterPoint()) *scaleFloor, y_pos, (nodes.get(i).z-zCenterPoint()) *scaleFloor, (nodes.get(i).x/nodes.get(nodes.size()-1).x)*100, 0);
    pg[3].endShape(CLOSE);
  }
  
  void dinding(float y_pos, float tinggi_lantai, float scaleFloor, PImage imageTexture){
    pg[3].textureMode(IMAGE);
    pg[3].beginShape(QUADS);
    pg[3].texture(imageTexture);
    for(int i=nodes.size()-1; i>=1; i--){
      pg[3].vertex((nodes.get(i).x-xCenterPoint()) *scaleFloor, y_pos, (nodes.get(i).z-zCenterPoint()) *scaleFloor, 0, 100);
      pg[3].vertex((nodes.get(i).x-xCenterPoint()) *scaleFloor, y_pos - tinggi_lantai, (nodes.get(i).z-zCenterPoint()) *scaleFloor, 0, 0);
      pg[3].vertex((nodes.get(i-1).x-xCenterPoint()) *scaleFloor, y_pos - tinggi_lantai, (nodes.get(i-1).z-zCenterPoint()) *scaleFloor, 500, 0);
      pg[3].vertex((nodes.get(i-1).x-xCenterPoint()) *scaleFloor, y_pos, (nodes.get(i-1).z-zCenterPoint()) *scaleFloor, 500,100);
    }
    pg[3].vertex((nodes.get(0).x-xCenterPoint()) *scaleFloor, y_pos, (nodes.get(0).z-zCenterPoint()) *scaleFloor, 0, 100); //bug
    pg[3].vertex((nodes.get(0).x-xCenterPoint()) *scaleFloor, y_pos - tinggi_lantai, (nodes.get(0).z-zCenterPoint()) *scaleFloor, 0, 0);
    pg[3].vertex((nodes.get(nodes.size()-1).x-xCenterPoint()) *scaleFloor, y_pos - tinggi_lantai, (nodes.get(nodes.size()-1).z-zCenterPoint()) *scaleFloor, 500, 0);
    pg[3].vertex((nodes.get(nodes.size()-1).x-xCenterPoint()) *scaleFloor, y_pos, (nodes.get(nodes.size()-1).z-zCenterPoint()) *scaleFloor, 500, 100);
    pg[3].endShape(CLOSE);
  }
  
  void atap(float y_pos, float tinggi_lantai, float scaleFloor){
    pg[3].beginShape(POLYGON);
    for(int i = nodes.size()-1; i>=0; i--)
       pg[3].vertex((nodes.get(i).x-xCenterPoint()) *scaleFloor, y_pos - tinggi_lantai, (nodes.get(i).z-zCenterPoint()) *scaleFloor, (nodes.get(i).x/nodes.get(nodes.size()-1).x)*100, 0);
    pg[3].endShape(CLOSE);
  }

  void display(){
    pg[3].beginDraw();
    pg[3].pushMatrix();
    pg[3].lights();
    pg[3].background(175);
    pg[3].shapeMode(CENTER);
    //pg[3].translate(pg[3].width/2,height-100,-100);
    //pg[3].translate(0,0,transZ);
    //pg[3].translate(0,transY,0);
    //pg[3].translate(transX,0,0);
    //pg[3].rotateY(rotY);
    //if(grid3D){
    //  int i=-500;
    //  pg[3].stroke(135);
    //  while(i<=500){
    //    pg[3].line(i,0,-500,i,0,500);
    //    pg[3].line(-500,0,i,500,0,i);
    //    i+=25;
    //  }
    //  pg[3].stroke(0);
    //}
    pg[3].textureWrap(REPEAT);
    for(int i = 0; i < floors.size(); i++){
      if(floors.get(i).isSelected){
        pg[3].strokeWeight(5);
        pg[3].stroke(#ED0202);
      }
      else
        pg[3].stroke(0);
      dinding(floors.get(i).y1_pos, floors.get(i).h, floors.get(i).scaleFloor, floors.get(i).imageTexture);
      atap(floors.get(i).y1_pos, floors.get(i).h, floors.get(i).scaleFloor);
        if((i>0 && floors.get(i-1).isSelected) ||floors.get(i).isSelected){
          pg[3].stroke(#ED0202);
          pg[3].strokeWeight(5);
          alas(floors.get(i).y1_pos,  floors.get(i).scaleFloor);
          pg[3].stroke(0);
          pg[3].strokeWeight(1);
        }
        else{
          pg[3].stroke(0);
          alas(floors.get(i).y1_pos,  floors.get(i).scaleFloor);
        }
    }
    pg[3].popMatrix();
    pg[3].endDraw();
  }
}

float xCenterPoint(){
  float x=0;
  for(int i=nodes.size()-1; i>=0; i--)
    x += nodes.get(i).x;
  return x/nodes.size();
}

float zCenterPoint(){
  float z=0;
  for(int i=nodes.size()-1; i>=0; i--)
    z += nodes.get(i).z;
  return z/nodes.size();
}
