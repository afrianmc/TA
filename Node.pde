class Node {
  float x, y, z, x1, y1;
  boolean selected = false;
  
  Node(float tempX1, float tempY1){//float tempX2, float tempY2
    x = tempX1;
    y = 0;
    z = tempY1;
    //x1 = tempX2;
    //y1 = tempY2;
  }
  void display(){
    fill(0);
    scale(10);
    point(x,z);
    //point(x1,y1);
  }
}
