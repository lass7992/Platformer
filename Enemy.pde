class enemy {
  int xpos, ypos, speed, dir, hp, hp_max, billede_index;
  String type;

  enemy( String temp_type, int temp_speed, int temp_hp) {
    if (random(1) >= 0.5) {
      xpos = 100;
    } else {
      xpos = 700;
    }
    ypos = 100;
    speed = temp_speed;
    type = temp_type;
    if (random(1) >= 0.5) {
      dir = 1;
    } else {
      dir = -1;
    }
    hp = temp_hp;
    hp_max = hp;
    billede_index = 0;
    super_charge++;
  }

  void update() {

    if (xpos > screen_x) { // rykker monsteret ind på skærmen 
      xpos -= screen_x;
    }
    if (xpos < 0) { // rykker monsteret ind på skærmen 
      xpos += screen_x;
    }
    if (ypos > screen_y) { // rykker monsteret ind på skærmen 
      if (random(1) >= 0.5) {
        dir = 1;
      } else {
        dir = -1;
      }
      ypos -= screen_y;
      if (random(1) >= 0.5) {
        xpos = 100;
      } else {
        xpos = 700;
      }
    }

    if (collision_down(xpos, ypos-14) == true) {
      ypos += 8;
    } else {
      xpos += dir*speed;
    }

    //rykker på billederne
    if (billede_index >= 25) {
      billede_index = 0;
    }
    billede_index++;

    draw();
  }

  void draw() {
    pushMatrix();
      translate(xpos, ypos);
      scale(-dir, 1);
      if(type == "normal"){
        image(enemy_img[round(billede_index/5)], -20, -40, 50, 80);
      }else{
        image(super_enemy_img[round(billede_index/billede_index)-1], -20, -40, 80, 80);
      }
      popMatrix();
      fill(0, 255, 0);
    rect(xpos-25, ypos-40, (float(hp)/hp_max)*50, 10);
  }
}
