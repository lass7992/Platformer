void Bane_Creater(String file_name){
  String[] Bane_file = loadStrings(file_name);
  for (int i = 2 ; i < Bane_file.length; i++) {
    for (int q = 0 ; q < Bane_file[i].length(); q++) {
      if (Bane_file[i].charAt(q) == 'f'){
        map_objekter = (map_objekt[])append(map_objekter, new map_objekt(64*q,64*(i-2),true, "floor"));
      }
      else if (Bane_file[i].charAt(q) == 'r'){
        ropes = (rope[])append(ropes,new rope(64*q+26,64*(i-2)));
      }
      else if (Bane_file[i].charAt(q) == 'R'){
        map_objekter = (map_objekt[])append(map_objekter, new map_objekt(64*q,64*(i-2),true, "floor"));
        ropes = (rope[])append(ropes,new rope(64*q+26,64*(i-2)));
      }
      else if (Bane_file[i].charAt(q) == 'p'){
        x_pos = q*64;
        y_pos = i*64-130;
      }

    }
  }  
}


class map_objekt{
  Boolean Solid;
  int xpos, ypos;
  String type;
  
  map_objekt(int x, int y, Boolean sol, String typ){
    xpos = x;
    ypos = y;
    Solid = sol;
    type = typ;
    
  }
  
  void update(){ 
   if(type == "floor"){
     draw_floor(xpos,ypos);
   }
  }
}
