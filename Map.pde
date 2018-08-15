// de 2 første linjer er for normale enermies brede og højde
// derefter er det superminions brede og højte


void Bane_Creater(String file_name) {
  String[] Bane_file = loadStrings(file_name);
  normal_enemy_scale[0] = int(Bane_file[0]);
  normal_enemy_scale[1] = int(Bane_file[1]);
  super_enemy_scale[0] = int(Bane_file[2]);
  super_enemy_scale[1] = int(Bane_file[3]);
  
  for (int i = 4; i < Bane_file.length; i++) {
    for (int q = 0; q < Bane_file[i].length(); q++) {
      if (Bane_file[i].charAt(q) == 'f') {
        map_objekter = (map_objekt[])append(map_objekter, new map_objekt(64*q, 64*(i-4), true, "floor"));
      } else if (Bane_file[i].charAt(q) == 'r') {
        ropes = (rope[])append(ropes, new rope(64*q+26, 64*(i-4),false));
        
      } else if (Bane_file[i].charAt(q) == 'R') {
        map_objekter = (map_objekt[])append(map_objekter, new map_objekt(64*q, 64*(i-4), true, "floor"));
        ropes = (rope[])append(ropes, new rope(64*q+26, 64*(i-4),true));
      } else if (Bane_file[i].charAt(q) == 'p') {
        Player_1.x_pos = q*64;
        Player_1.y_pos = (i-4)*64;
      }else if(Bane_file[i].charAt(q) == 's') {
        enemy_spawn_points = (int[][])append(enemy_spawn_points, new int[64*q]);
        enemy_spawn_points[enemy_spawn_points.length-1] = (int[])append(enemy_spawn_points[enemy_spawn_points.length-1], 64*(i-4));
      }
    }
  }
}


class map_objekt {
  Boolean Solid;
  int xpos, ypos;
  String type;

  map_objekt(int x, int y, Boolean sol, String typ) {
    xpos = x;
    ypos = y;
    Solid = sol;
    type = typ;
  }

  void update() { 
    if (type == "floor") {
      draw_floor(xpos, ypos);
    }
  }
}
