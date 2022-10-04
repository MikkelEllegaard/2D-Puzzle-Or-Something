int Ppx = 50;
int Ppy = 450;
boolean Map1 = true;
boolean noClip = false;

void setup () {
  size(800, 1050);
}

void draw() {
  background(250);
  map();
  homescreen();
  player();
  lines();
}

void homescreen () {
  
}

void lines() {
  line(0, 100, 800, 100); //h
  line(0, 200, 800, 200);
  line(0, 300, 800, 300);
  line(0, 400, 800, 400);
  line(0, 500, 800, 500);
  line(0, 600, 800, 600);
  line(0, 700, 800, 700);
  strokeWeight(4);
  line(0, 800, 800, 800);

  strokeWeight(1);
  line(100, 0, 100, 800); //v
  line(200, 0, 200, 800);
  line(300, 0, 300, 800);
  line(400, 0, 400, 800);
  line(500, 0, 500, 800);
  line(600, 0, 600, 800);
  line(700, 0, 700, 800);
}

void player() {
  fill(0, 255, 0);
  rect(Ppx, Ppy, 100, 100);
}

void mousePressed() { //has player movement, fruit counter, reset button etc.
  int x = mouseX;
  int y = mouseY;

  if (x>350 && x<450 && y>850 && y<950) { //moves player 100 up if not at top already
    if (!(Ppy == 0) &&
      !(Ppy == 405 && Ppx < 200) && 
      !(Ppy == 205 && Ppx > 100 && Ppx < 405) && 
      !(Ppy == 605 && Ppx > 100 && Ppx < 400) && 
      !(Ppy == 405 && Ppx > 300) &&
      !(Ppy == 600 && Ppx > 495 && Ppx < 605)) Ppy = Ppy - 5;
  }
  if (x>350 && x<450 && y>950 && y<1050) { //moves player 100 down if not at bottom already
    if (!(Ppx == 0) &&
      !(Ppy < 205 && Ppx == 405) &&
      !(Ppy > 100 && Ppy < 600 && Ppx == 605) &&
      !(Ppy > 295 && Ppy < 405 && Ppx == 200) &&
      !(Ppy > 495 && Ppy < 605 && Ppx == 400) &&
      !(Ppy > 600 && Ppx == 210)) Ppx = Ppx - 5;
  }
  if (x>250 && x<350 && y>950 && y<1050) { //moves player 100 left if not already full left
    if (!(Ppy == 700) &&
      !(Ppy == 95 && Ppx > 200 && Ppx < 405) &&
      !(Ppy == 100 && Ppx > 595 && Ppx < 605) &&
      !(Ppy == 295 && Ppx < 200) &&
      !(Ppy == 295 && Ppx > 400) &&
      !(Ppy == 495 && Ppx > 200 && Ppx < 400)) Ppy = Ppy + 5;
  }
  if (x>450 && x<550 && y>950 && y<1050) { //moves player 100 right if not already full right
    if (Ppx < 700) Ppx = Ppx + 5;
    else if (Ppx == 700) Ppx = 700;
  }
 }

void keyPressed() {
  if (noClip == false) {
    if (key == 'p') {
      noClip = true;
    }
  }
  else if (noClip == true) {
    if (key == 'p') {
      noClip = false;
    }
    if (key == 'w') Ppy = Ppy - 5;
    if (key == 'a') Ppx = Ppx - 5;
    if (key == 's') Ppy = Ppy + 5;
    if (key == 'd') Ppx = Ppx + 5;
  }
  
  if (noClip == false) {
  if (Map1 == true) {
    if (key == 'w') {
      if (!(Ppy == 0) &&
      !(Ppy == 405 && Ppx < 200) && 
      !(Ppy == 205 && Ppx > 100 && Ppx < 405) && 
      !(Ppy == 605 && Ppx > 100 && Ppx < 400) && 
      !(Ppy == 405 && Ppx > 300) &&
      !(Ppy == 600 && Ppx > 495 && Ppx < 605)) Ppy = Ppy - 5;
    }
    if (key == 'a') {
      if (!(Ppx == 0) &&
      !(Ppy < 205 && Ppx == 405) &&
      !(Ppy > 100 && Ppy < 600 && Ppx == 605) &&
      !(Ppy > 295 && Ppy < 405 && Ppx == 200) &&
      !(Ppy > 495 && Ppy < 605 && Ppx == 400) &&
      !(Ppy > 600 && Ppx == 210)) Ppx = Ppx - 5;
    }
    if (key == 's') {
      if (!(Ppy == 700) &&
      !(Ppy == 95 && Ppx > 200 && Ppx < 405) &&
      !(Ppy == 100 && Ppx > 595 && Ppx < 605) &&
      !(Ppy == 295 && Ppx < 200) &&
      !(Ppy == 295 && Ppx > 400) &&
      !(Ppy == 495 && Ppx > 200 && Ppx < 400)) Ppy = Ppy + 5;
    }
    if (key == 'd') {
      if (!(Ppx == 700) &&
      !(Ppy < 195 && Ppx == 295) &&
      !(Ppy > 95 && Ppy < 205 && Ppx == 100) &&
      !(Ppy > 100 && Ppy < 600 && Ppx == 495) &&
      !(Ppy > 295 && Ppy < 405 && Ppx == 300)) Ppx = Ppx + 5;
    }
    
     noFill(); //buttons
  strokeWeight(4);
  rect(350, 850, 100, 100); //UP button
  rect(350, 950, 100, 100); //DOWN button
  rect(250, 950, 100, 100); //LEFT button
  rect(450, 950, 100, 100); //RIGHT button

  fill(0); //buttons text
  textSize(40);
  text("UP", 375, 915); //UP button
  textSize(35);
  text("DOWN", 352.5, 1015); //DOWN button
  text("LEFT", 265, 1015); //LEFT button
  text("RIGHT", 455, 1015); //RIGHT button
  }
}
}
