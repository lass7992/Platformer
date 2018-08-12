void Time_Controllers(){
  
  time += millis() - past_time;
  past_time = millis();
  
  // tricker hvis dere rgået over 100 milisekunder
  if(time > enemy_spawn_rate){
    
    time -= enemy_spawn_rate;
    if(super_charge < 10){
      enemies = (enemy[])append(enemies, new enemy("normal", 4, 100,normal_enemy_scale[0],normal_enemy_scale[1]));
    }else{
      super_charge -= 10;
      enemies = (enemy[])append(enemies, new enemy("super", 6, 200,super_enemy_scale[0],super_enemy_scale[1]));
    }
     
  }
}
