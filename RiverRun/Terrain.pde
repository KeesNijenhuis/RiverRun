class Terrain {

  float x = 0;
  float y = 620;
  float w = 1280, h = 90;
  float vx;


  void init() {

    //x = 0;
    //y = 630;
    //w = 1280;
    //h = 90;

    vx = -4;
  }

  void update() {

    //x += vx;
    
    if(x + w < 0) {
      x = width; 
    }
  }

  void draw() {

    rect(x, y, w, h);
    
   //rect(800, 0, 200, 1000);
  }
}