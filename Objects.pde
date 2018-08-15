class floor {
  int xpos, ypos;

  floor(int x, int y) {
    xpos = x;
    ypos = y;
  }
}

class rope {
  int xpos, ypos;
  boolean end;

  rope(int x, int y, boolean temp_end) {
    xpos = x;
    ypos = y;
    end = temp_end;
  }
}


class bullet {
  int xpos, ypos, speed;
  int dir, skade;
  String type;

  bullet(int x, int y, String temp_type, int temp_speed, int temp_dir, int temp_skade) {
    xpos = x;
    ypos = y;
    type = temp_type;
    speed = temp_speed;
    dir = -temp_dir;
    skade = temp_skade;
  }


  void update() {

    xpos += dir*speed;
    draw();

    //collision detection
    for (int i = 0; i < enemies.length; i++) {
      if (Collision_skud(enemies[i].xpos, enemies[i].ypos, enemies[i].enemy_width, enemies[i].enemy_height) == true) {
        enemies[i].hp -= skade;
      }
    }

    for (int i = 0; i < map_objekter.length; i++) {
      Collision_skud(map_objekter[i].xpos, map_objekter[i].ypos+40,30,20);
    }
  }

  void draw() {
    if (type == "normal") {
      fill(100, 200, 100);
    } else {
      fill(200, 100, 100);
    }
    pushMatrix();
      translate(xpos, ypos);
      scale(dir,1);
      image(bullet_img[int(type)-1],0,0 );
    popMatrix();
  }
}



class muffin {
  int xpos, ypos;
  boolean taken;

  muffin(int x, int y) {
    xpos = x;
    ypos = y;
    taken = false;
  }

  void update() {
    if (Player_1.x_pos < xpos+40 && Player_1.x_pos > xpos-40 && Player_1.y_pos < ypos+30 && Player_1.y_pos > ypos-30) {
      taken = true;
      Player_1.new_Hero();

      
      int temp_y;
      if (random(1) >= 0.5) {temp_y = 400;} else {temp_y =200;}
        
      muffin_instance = new muffin(int(random(100, 800)), temp_y); 
      
      //sætter spawn raten ned
      enemy_spawn_rate -= int(float(enemy_spawn_rate)/30);

      
      
      Player_1.score += 10;
    }
    if(players == 2){
          if (Player_2.x_pos < xpos+40 && Player_2.x_pos > xpos-40 && Player_2.y_pos < ypos+30 && Player_2.y_pos > ypos-30) {
        taken = true;
        Player_2.new_Hero();
  
        
        int temp_y;
        if (random(1) >= 0.5) {temp_y = 400;} else {temp_y =200;}
          
        muffin_instance = new muffin(int(random(100, 800)), temp_y); 
        
        //sætter spawn raten ned
        enemy_spawn_rate -= int(float(enemy_spawn_rate)/30);
  
        
        
        Player_2.score += 10;
      }
    }
    
    if (taken == false) {
      fill(200, 0, 200);
      rect(xpos-10, ypos-10, 20, 20);
    }
  }
}
