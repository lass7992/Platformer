void player_1_rutine(){
    gravity();
    
    
    MovementChecker();
    if (jumping == true) {
      jump();
    }
    
    if (gravity_able == false && collision_rope(x_pos,y_pos) == true) {
      gravity_able = true;
    }
    //enemy hit
    if (invis_counter == 0) {
      if (Collision_enermy(x_pos, y_pos) == true) {  
        hero_liv--;
        invis_counter = 100;
      }
    } else {
      invis_counter--;
    }
}
void player_2_rutine(){
    gravity_2();
    
    
    MovementChecker();
    if (jumping_2 == true) {
      jump_2();
    }
    
    if (gravity_able_2 == false && collision_rope(x_pos_2,y_pos_2) == true) {
      gravity_able_2 = true;
    }
    //enemy hit
    if (invis_counter_2 == 0) {
      if (Collision_enermy(x_pos_2, y_pos_2) == true) {  
        hero_liv_2--;
        invis_counter_2 = 100;
      }
    } else {
      invis_counter_2--;
    }
}
