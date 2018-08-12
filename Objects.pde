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

  bullet(int x, int y, String temp_type, int temp_speed) {
    xpos = x;
    ypos = y;
    type = temp_type;
    speed = temp_speed;
    dir = -hero_dir;
    skade = 50;
  }


  void update() {

    xpos += dir*speed;
    draw();

    //collision detection
    for (int i = 0; i < enemies.length; i++) {
      if (Collision_skud(enemies[i].xpos, enemies[i].ypos) == true) {
        enemies[i].hp -= skade;
      }
    }

    for (int i = 0; i < map_objekter.length; i++) {
      Collision_skud(map_objekter[i].xpos, map_objekter[i].ypos+40);
    }
  }

  void draw() {
    if (type == "normal") {
      fill(100, 200, 100);
    } else {
      fill(200, 100, 100);
    }

    ellipse(xpos, ypos, 32, 8);
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
    if (x_pos < xpos+40 && x_pos > xpos-40 && y_pos < ypos+30 && y_pos > ypos-30) {
      taken = true;
      current_bullet_speed = int(random(5, 15));
      current_bullet = "hej";
      
      int temp_y;
      if (random(1) >= 0.5) {temp_y = 500;} else {temp_y =200;}
        
      muffin_instance = new muffin(int(random(100, 800)), temp_y); 
      
      //sætter spawn raten ned
      enemy_spawn_rate -= int(float(enemy_spawn_rate)/30);

      
      
      score += 10;
    }

    if (taken == false) {
      fill(200, 0, 200);
      rect(xpos-10, ypos-10, 20, 20);
    }
  }
}
