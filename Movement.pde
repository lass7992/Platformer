void MovementChecker(){
  if( keys[0]) 
  {  
    if (true == true){
      x_pos -= 2;
      hero_dir = 1;
    }
  }
  if( keys[1]) 
  {
    if (true == true){
      //y += 3;
    }
  }
  if( keys[2]) 
  {  
    if (true == true){
      //y -= 3;
    }
  }
  if( keys[3]) 
  {
    if (true == true){
      x_pos += 2;
      hero_dir = -1;
    }
  }
}

void keyPressed(){
  if(key=='a')
    keys[0]=true;
  if(key=='s')
    keys[1]=true;
  if(key=='w')
    keys[2]=true;
  if(key=='d')
    keys[3]=true;
}
void keyReleased(){
    if(key=='a')
      keys[0]=false;
    if(key=='s')
      keys[1]=false;
    if(key=='w')
      keys[2]=false;
    if(key=='d')
      keys[3]=false;
}
