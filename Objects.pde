class floor{
  int xpos, ypos;
  
  floor(int x, int y){
  xpos = x;
  ypos = y;
  }
  
}

class rope{
  int xpos, ypos;
  
  rope(int x, int y){
  xpos = x;
  ypos = y;
  }
  
}


class bullet{
  int xpos, ypos, speed;
  int dir;
  String type;
  
  bullet(int x, int y, String temp_type, int temp_speed){
    xpos = x;
    ypos = y;
    type = temp_type;
    speed = temp_speed;
    dir = -hero_dir;
  }
  
  
  void update(){

    xpos += dir*speed;
    draw();
  }
  
  void draw(){
    print(xpos);
    if(type == "normal"){
      fill(100,200,100);
    }
    else{
      fill(200,100,100);
    }
    
    ellipse(xpos,ypos,32,8);
  }
  
}



class muffin{
  int xpos, ypos;
  boolean taken;
  
  muffin(int x, int y){
  xpos = x;
  ypos = y;
  taken = false;
  }
  
  void update(){
    if(x_pos < xpos+40 && x_pos > xpos-40 && y_pos < ypos+30 && y_pos > ypos-30){
      taken = true;
      current_bullet_speed = int(random(1,10));
      current_bullet = "hej";
      muffin_instance = new muffin(int(random(100,800)),500); 
    }
    
    if(taken == false){
      fill(200,0,200);
      rect(xpos-10,ypos-10,20,20);
    }
  }
}
