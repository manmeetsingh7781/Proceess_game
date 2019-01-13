

class Player{
  
    public float x, y, width_p, height_p;
    public float gravity = 0.9f;
    public float gravitySpeed = 0.5f;
    public float player_Width = 20;
    public float player_Height = 20;
    public float playerX = 400 - player_Width;
    public float playerY = 400 - player_Height;
    
  public Player(){
    this.x =  playerX;
    this.y = playerY;
    this.width_p =  player_Height ;
    this.height_p = player_Width;
   
  }
  
  public void drawPlayer(){
    this.y = this.y + gravity;
    this.gravity += this.gravitySpeed;
    fill(102, 204, 255);
    ellipse(this.x, this.y, player_Width, player_Height);
  
}

void accelerate(float val) {
       this.gravity = val;
}

    



}
