/**
 *  @Author Kees Nijenhuis
 *  De Player class
 *
 **/

class Player {
  Terrain terr = new Terrain();

  float playerX, playerY;

  float velX = 0;
  float velY = 0;
  float playerSpeed = 10;
  float jumpSpeed = -6;
  float size = 10;

  float upKey, rightKey, downKey, leftKey, spaceKey;

  boolean onGround;
  float gravity = 0.1;

  void init() {
    playerX = 200;
    playerY = 100;
  }



  void draw() {
    velY += gravity;


    checkCollision();
    jump();

    playerX += velX;
    playerY += velY;



    rect(playerX, playerY, size, size);
  }

  void checkCollision() {
    boolean collidedGround = collision(playerX, playerY, size, terr.x, terr.y, terr.w, terr.h);


    if (collidedGround) {
      onGround = true;
    } else {
      velX = (rightKey - leftKey) * playerSpeed;
      onGround = false;
    }

    if (onGround) {
      velY = 0;
      velX = (rightKey - leftKey) * playerSpeed;
    }
  }

  void jump() {
    if (spaceKey == 1) 
      velY = jumpSpeed;
    else if (spaceKey == 0 && !onGround) 
      velY += gravity;
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
    //println(distance);

    if (distance <= playerSize) {
      return true;
    }
    return false;
  }

  void update() {
  }
}