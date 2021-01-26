  void setup() {
  size(800, 512);
  background(50);
  frameRate(10);
  println("Botao direito do mouse desenha em PB");
  println("Botao esquerdo do mouse desenha muito colorido");
  println("Z apaga tudo");
  println("X engrossa a linha");
  println("C afina a linha");
  println("V deixa o bg mais vermelho");
  println("F deixa o bg menos vermelho");
  println("B deixa o bg mais verde");
  println("G deixa o bg menos verde");
  println("N deixa o bg mais azul");
  println("H deixa o bg menos azul");

}
int a = 1;
int b = 50;
int c = 50;
int d = 50;
void keyPressed(){
  if(keyPressed == true){
    if(key == 'z'){
      background(50);
    }
    else if(key == 'x'){
      a = a + 1;
      strokeWeight(a);
    }
    else if(key == 'c'){
      a = a - 1;
      if(a >= 0){
        strokeWeight(a);
      }
      else{
        a = 0;
      }
    }
    else if(key == 'v'){
      b += 3;
      background(b,c,d);
    }
    else if(key == 'b'){
      c += 3;
      background(b,c,d);
    }
    else if(key == 'n'){
      d += 3;
      background(b,c,d);
    } 
    else if(key == 'f'){
      b -= 3;
      background(b,c,d);
    }
    else if(key == 'g'){
      c -= 3;
      background(b,c,d);
    }
    else if(key == 'h'){
      d -= 3;
      background(b,c,d);
    }
    else if (key == 'p'){
      saveFrame("print-####.png");
    }
  }
}

void draw() {
  
  if (mousePressed && (mouseButton == LEFT)){
    line(random(0,800),random(0,512),random(0,800),random(0,512));
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
  
  else if(mousePressed && (mouseButton == RIGHT)){
    stroke(random(0,255),random(0,255),random(0,255));
    line(pmouseX, pmouseY, mouseX, mouseY);  
  }
  
  else if(mousePressed && (mouseButton == CENTER)){
    stroke(255,0,255);
    line(pmouseX, pmouseY, mouseX, mouseY);  
  }
}  
