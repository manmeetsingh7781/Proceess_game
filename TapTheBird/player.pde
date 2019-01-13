

class Player{
  
    public float x, y, width_p, height_p;
    public float gravity = 0.9f;
    public float gravitySpeed = 0.5f;
    public float playerX = 280;
    public float playerY = 280;
    public float player_Width = 20;
    public float player_Height = 20;
    
    
  public Player(){
    this.x =  playerX;
    this.y = playerY;
    this.width_p =  player_Height ;
    this.height_p = player_Width;
  }
  
  public void drawPlayer(){
    this.y = this.y + gravity;
    this.gravity += this.gravitySpeed;
    rect(this.x,  this.y, this.width_p,  this.height_p);
  
}



}
