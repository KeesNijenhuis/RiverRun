class Player {
  Terrain terr = new Terrain();

  float playerX, playerY;

  float velX = 0;
  float velY = 0;
  float playerSpeed = 10;
  float jumpSpeed = -10;
  float size = 10;

  float upKey, rightKey, downKey, leftKey;

  boolean onGround;
  float gravity = 0.1;

  void init() {
    playerX = 200;
    playerY = 100;
  }

  void draw() {
    velY += gravity;



    boolean tempOnGround = false;

    boolean collided = collision(playerX, playerY, size, terr.x, terr.y, terr.w, terr.h);

    if (collided && upKey == 1) {
        //if(playerY 
        velY = 0;
      
    } else {
      //println("Ook kut");
      velX = (rightKey - leftKey) * playerSpeed;
    }


    playerX += velX;
    playerY += velY;



    ellipse(playerX, playerY, size, size);
    onGround = tempOnGround;
  }

  boolean collision(float playerX, float playerY, float playerSize, float terrainX, float terrainY, float terrainW, float terrainH) {

    float testX = playerX;
    float testY = playerY;

    if (playerX < terrainX) testX = terrainX;
    else if (playerX > terrainX + terrainW) testX = terrainX + terrainW;

    if (playerY < terrainY) testY = terrainY;
    else if (playerY > terrainY + terrainH) testY = terrainY + terrainH;

    float distX = playerX - testX;
    float distY = playerY - testY;
    float distance = sqrt((distX * distX) + (distY * distY));
    println(distance);

    if (distance <= playerSize) {
      return true;
    }
    return false;
  }




  void update() {
  }
}