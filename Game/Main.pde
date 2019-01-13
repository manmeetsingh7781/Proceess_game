private int moving_speedX = 10;
private PFont f; 
private int score = 0;
private Poles main = new Poles(); 
private String bk = "bk.png";
private String bk2 = "bk2.png";
private String bk3 = "bk3.jpg";
public  PImage img1, img2, img3;
private int imageX = 0, bk2X = 600, bk3X = 600 * 2;
   
void setup(){
    size(600,600);
    img1 = loadImage(bk);
    img2 = loadImage(bk2);
    img3 = loadImage(bk3); 
    
   
    smooth(2);
}



void draw(){
     
      imageX-=1;
      bk2X-=1;
      bk3X-=1;
      if(imageX < -width){
        imageX = width;
      }
      
       if(bk2X < -width){
        bk2X = width;
      }
      
      if(bk3X < -width*2){
        bk3X = width;
      }
      
      
      
      
      background(0,0,0,0);
      image(img1, imageX , 0, width, height);
      image(img2, bk2X , 0, width, height);
      image(img3, bk3X , 0, width, height);
     

       
       
      drawPoles();
  


       
}

void drawPoles(){
     main.drawPoleMap();
     main.player.drawPlayer();
     drawMSG("Score: "+score, width-100, 20 , 16);   

}


    
    
void drawMSG(String msg, int x, int y, int size){
    f = createFont("Arial", 16, true); 
    textFont(f, size);
    fill(255);
    text(msg ,x, y);

}

    
void mousePressed(){
    main.player.accelerate(-5);   

}
