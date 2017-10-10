//Objects
Player player = new Player();
Terrain terrain = new Terrain();

//Variables

void setup() {
  size(1280, 720);
  frameRate(60);

  player.init();
  terrain.init();
  
}

void updateGame() {
  player.update();
  terrain.update();
}

void drawGame() {
  background(0);

  player.draw();
  terrain.draw();
}

void keyPressed() {
  if (key == ' ') {
    if (player.onGround == true) {
      player.spaceKey =1;
    }
  }
  if (keyCode == LEFT) {
    player.leftKey = 1;
  }
  if (keyCode == RIGHT) {
    player.rightKey = 1;
  }
  if (keyCode == UP) {
    player.upKey = 1;
  }
  if (keyCode == DOWN) {
    player.downKey = 1;
  }
}

void keyReleased() {
  if (key == ' ') {

    player.spaceKey = 0;
  }
  if (keyCode == LEFT) {
    player.leftKey = 0;
  }
  if (keyCode == RIGHT) {
    player.rightKey = 0;
  }
  if (keyCode == UP) {
    player.upKey = 0;
  }
  if (keyCode == DOWN) {
    player.downKey = 0;
  }
}



//----------------
void draw() {
  updateGame();
  drawGame();
}