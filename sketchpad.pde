void setup() {
  size(800, 512);
  background(50);
  frameRate(10);
}

int a = 1;
int b = 50;
int c = 50;
int d = 50;
void keyPressed(){
  if(keyPressed == true){
    if(key == 'z'){
      background(50); //set the background color to your default color while erases everything in the canvas
    }
    else if(key == 'x'){
      a = a + 1;
      strokeWeight(a); //increase the stroke thickness
    }
    else if(key == 'c'){
      a = a - 1; 
      if(a >= 0){
        strokeWeight(a); //decrease the stroke thickness
      }
      else{
        a = 0;
      }
    }
    else if(key == 'v'){
      b += 3;
      background(b,c,d); //increases the red tonality on the background while erases everything in the canvas
    }
    else if(key == 'b'){
      c += 3;
      background(b,c,d); //increases the green tonality on the background while erases everything in the canvas
    }
    else if(key == 'n'){
      d += 3;
      background(b,c,d); //increases the blue tonality on the background while erases everything in the canvas
    } 
    else if(key == 'f'){
      b -= 3;
      background(b,c,d); //decreases the red tonality on the background while erases everything in the canvas
    }
    else if(key == 'g'){
      c -= 3;
      background(b,c,d); //decreases the green tonality on the background while erases everything in the canvas
    }
    else if(key == 'h'){
      d -= 3;
      background(b,c,d); //decreases the blue tonality on the background while erases everything in the canvas
    }
    else if (key == 'p'){
      saveFrame("print-####.png"); //save the frame on the canvas as a .png file
    }
  }
}

void draw() {
  
  if (mousePressed && (mouseButton == LEFT)){
    stroke(random(0,255));
    line(pmouseX, pmouseY, mouseX, mouseY); //turns the cursor into a random black and white brush for each frame
  }
  
  else if(mousePressed && (mouseButton == RIGHT)){
    stroke(random(0,255),random(0,255),random(0,255)); //turns the cursor into a random colorized brush for each frame
    line(pmouseX, pmouseY, mouseX, mouseY);  
  }
}  
