class enemy {
  int xpos, ypos, speed, dir, hp, hp_max, billede_index,enemy_height, enemy_width;
  String type;
  boolean angry;
  
  enemy( String temp_type, int temp_speed, int temp_hp, int temp_enemy_width, int temp_enemy_height) {
    enemy_width = temp_enemy_width;
    enemy_height = temp_enemy_height;
    
    int i = round(random(enemy_spawn_points.length-1));

    xpos = enemy_spawn_points[i][0];
    ypos = enemy_spawn_points[i][1];
    
    speed = temp_speed;
    type = temp_type;
    
    if (random(1) >= 0.5) {dir = 1;} else {dir = -1;}
    hp = temp_hp;
    hp_max = hp;
    billede_index = 0;
    super_charge++;
    angry = false;
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
      if(angry == false){
        speed = speed *2;
        angry = true;
      }
      if (random(1) >= 0.5) {
        xpos = 100;
      } else {
        xpos = 700;
      }
    }

    if (collision_down(xpos, ypos-14, enemy_width) == true) {
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
      if(angry == true){
        tint(200,100,100);
      }
      if(type == "normal"){
        image(enemy_img[round(billede_index/5)], -enemy_width/2, -enemy_height/2, enemy_width, enemy_height);
      }else{
        image(super_enemy_img[round(billede_index/billede_index)-1], -enemy_width/2, -enemy_height/2, enemy_width, enemy_height);
      }
      noTint();
      popMatrix();
      fill(0, 255, 0);
    rect(xpos-25, ypos-40, (float(hp)/hp_max)*50, 10);
  }
}
