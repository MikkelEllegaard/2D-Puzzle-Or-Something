int Ppx = 50;
int Ppy = 450;
boolean Map1 = false;
boolean noClip = false;
boolean Homescreen = true;
boolean PC = true;
boolean Mobile = false;
boolean HowToPlay = false;
boolean About = false;

void setup () {
  size(800, 1050);
}

void draw() {
  background(250);
  map();
  player();
  homescreen();
  lines();
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

//////////////////////////////////////////////////////// 2D Puzzle ...
//////////////////////////////////////////////////////// Homescreen

void homescreen() {
  if (Homescreen == true) {
    fill(0);
    noFill();
    strokeWeight(4);
    if (Mobile == false && PC == false) {
      rect(100, 150, 600, 400);
      textSize(50);
      rect(200, 300, 200, 200);
      rect(400, 300, 200, 200);
      textSize(100);
      text("PC", 240, 430);
      textSize(60);
      text("Choose Your Device", 150, 250);
      text("PHONE", 410, 420);
    }
    if ((Mobile == true || PC == true) && HowToPlay == false && About == false) {
      textSize(20);
      if (Ppy > 700) text("That was intended :)", Ppx+100, Ppy);
      textSize(20);
      text("You Can Move Now", 300, 820);
      fill(153, 255, 255);
      rect(150, 50, 500, 200);
      textSize(90);
      fill(0);
      text("How To Play", 160, 240);
      fill(153, 255, 255);
      rect(150, 300, 500, 200);
      textSize(200);
      fill(0);
      text("Play", 200, 480);
      fill(153, 255, 255);
      rect(150, 550, 500, 200);
      textSize(175);
      fill(0);
      text("About", 160, 740);
    }
    if (HowToPlay == true) { //How to play menu
      fill(153, 255, 255);
      rect(50, 50, 700, 700);
      fill(0);
      textSize(60);
      text("How To Play:", 240, 125);
      textSize(40);
      fill(255, 153, 0);
      rect(600,175,50,50);
      fill(0);
      text("These are keys", 100, 200);
      text("Collect all to unlock exit", 100, 250);
      text("For more tips, reach more levels", 100, 400);
    }
    if (About == true) {
      fill(153, 255, 255);
      rect(50, 50, 700, 700);
      fill(0);
      textSize(60);
      text("About", 240, 125);
      textSize(40);
      text("Game was made as hobby, and to get", 100, 200);
      text("better at coding while waiting for", 100, 250);
      text("next coding lesson (2 weeks).", 100, 300);
      textSize(55);
      text("Made by: Mikkel Ellegaard", 100, 500);
      textSize(50);
      text("A College Student", 100, 600);
      text("Computer Science course", 100, 650);
    }
    strokeWeight(1);
  }
}

//////////////////////////////////////////////////////// Homescreen
//////////////////////////////////////////////////////// Input stuff

void keyPressed() {
  if (key == 'q' && HowToPlay == true) { //Goes back from How To Play
    Homescreen = true;
    HowToPlay = false;
  }
  if (key == 'q' && About == true) { //Goes back from About
    Homescreen = true;
    About = false;
  }
  
  if (Homescreen == true && PC == true) {
    if (key == 'w') Ppy = Ppy - 5;
    if (key == 'a') Ppx = Ppx - 5;
    if (key == 's') Ppy = Ppy + 5;
    if (key == 'd') Ppx = Ppx + 5;
  }

  if (noClip == false) {
    if (key == 'p') {
      noClip = true;
    }
  } else if (noClip == true) {
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
          !(Ppy == 95 && Ppx > 100 && Ppx < 300) &&
          !(Ppy == 100 && Ppx > 495 && Ppx < 605) &&
          !(Ppy == 295 && Ppx < 200) &&
          !(Ppy == 295 && Ppx > 300) &&
          !(Ppy == 495 && Ppx > 100 && Ppx < 400) &&
          !(Ppy == 495 && Ppx < 105 && gOpen == false)) Ppy = Ppy + 5;
      }
      if (key == 'd') {
        if (!(Ppy == 700) &&
          !(Ppx == 100 && Ppy > 95 && Ppy < 205) &&
          !(Ppx == 100 && Ppy > 500) &&
          !(Ppx == 295 && Ppy < 100) &&
          !(Ppx == 300 && Ppy > 295 && Ppy < 405) && 
          !(Ppx == 495 && Ppy > 100 && Ppy < 600)) Ppx = Ppx + 5;
      }
    }
  }
}

void mouseClicked() {
  int x = mouseX;
  int y = mouseY;

  if (Mobile == true && Homescreen == true) {
    if (x>350 && x<450 && y>850 && y<950) Ppy = Ppy - 5;
    if (x>350 && x<450 && y>950 && y<1050) Ppy = Ppy + 5;
    if (x>250 && x<350 && y>950 && y<1050) Ppx = Ppx - 5;
    if (x>450 && x<550 && y>950 && y<1050) Ppx = Ppx + 5;
  }

  if (Homescreen == true) { //Device selection
    if (PC == false && Mobile == false) {
      if (x > 200 && x < 400 && y > 300 && y < 500) {
        PC = true;
      }
      if (x > 400 && x < 600 && y > 300 && y < 500) {
        Mobile = true;
      }
    }
    if (x > 150 && x < 650 && y > 50 && y < 250) HowToPlay = true; //How To Play button
    if (x > 150 && x < 650 && y > 300 && y < 500) { //Play button
      Map1 = true;
      Homescreen = false;
    }
    if (x > 150 && x < 650 && y > 550 && y < 750) About = true; //About button
  }

  if (Map1 == true) {
    if (noClip == false) {
      if (x > 690 && x<800 && y > 950 && y < 1025) {
        noClip = true;
      }
    } else if (noClip == true) {
      if (x > 690 && x<800 && y > 950 && y < 1025) {
        noClip = false;
      }
      if (x>350 && x<450 && y>850 && y<950) Ppy = Ppy - 5;
      if (x>350 && x<450 && y>950 && y<1050) Ppy = Ppy + 5;
      if (x>250 && x<350 && y>950 && y<1050) Ppx = Ppx - 5;
      if (x>450 && x<550 && y>950 && y<1050) Ppx = Ppx + 5;
    }
  }

  if (noClip == false) {
    if (Map1 == true) {
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
          !(Ppy > 600 && Ppx == 210)) Ppy = Ppy + 5;
      }
      if (x>250 && x<350 && y>950 && y<1050) { //moves player 100 left if not already full left
        if (!(Ppy == 700) &&
          !(Ppy == 95 && Ppx > 200 && Ppx < 405) &&
          !(Ppy == 100 && Ppx > 595 && Ppx < 605) &&
          !(Ppy == 295 && Ppx < 200) &&
          !(Ppy == 295 && Ppx > 400) &&
          !(Ppy == 495 && Ppx > 200 && Ppx < 400)) Ppx = Ppx - 5;
      }
      if (x>450 && x<550 && y>950 && y<1050) { //moves player 100 right if not already full right
        if (!(Ppx == 700) &&
          !(Ppy < 195 && Ppx == 295) &&
          !(Ppy > 95 && Ppy < 205 && Ppx == 100) &&
          !(Ppy > 100 && Ppy < 600 && Ppx == 495) &&
          !(Ppy > 295 && Ppy < 405 && Ppx == 300)) Ppx = Ppx + 5;
      }
    }
  }
}

//////////////////////////////////////////////////////// Input stuff
//////////////////////////////////////////////////////// Map1

boolean key1 = false;
boolean key2 = false;
boolean key3 = false;
boolean gOpen = false;

void map() {
  if (Mobile == true) {
    noFill(); //buttons
    strokeWeight(4);
    rect(350, 850, 100, 100); //UP button
    rect(350, 950, 100, 100); //DOWN button
    rect(250, 950, 100, 100); //LEFT button
    rect(450, 950, 100, 100); //RIGHT button
    rect(690, 950, 110, 75); //NOCLIP button
    strokeWeight(1);

    fill(0); //buttons text
    textSize(40);
    text("UP", 375, 915); //UP button
    textSize(35);
    text("DOWN", 352.5, 1015); //DOWN button
    text("LEFT", 265, 1015); //LEFT button
    text("RIGHT", 455, 1015); //RIGHT button
    textSize(30);
    text("NOCLIP", 700, 1000); //NOCLIP button
    if (noClip == true) text("ON", 750, 940); //CONFIRM NOCLIP button
  }

  if (Map1 == true) {
    if (key1 == false) { //key 1
      fill(255, 128, 0);
      if (Ppx > 175 && Ppx < 325 && Ppy < 125) {
        noFill();
        key1 = true;
      }
      rect(275, 75, 50, 50);
    }

    if (key2 == false) { //key 2
      fill(255, 128, 0);
      if (Ppx > 575 && Ppx < 725 && Ppy > 175 && Ppy < 325) {
        noFill();
        key2 = true;
      }
      rect(675, 275, 50, 50);
    }

    if (key3 == false) { //key 3
      fill(255, 128, 0);
      if (Ppx > 375 && Ppx < 525 && Ppy > 575 && Ppy < 725) {
        noFill();
        key3 = true;
      }
      rect(475, 675, 50, 50);
    }

    fill(0); //walls
    rect(0, 395, 200, 10); //hori
    rect(200, 195, 200, 10);
    rect(400, 395, 400, 10);
    rect(200, 595, 200, 10);

    rect(395, 0, 10, 205); //vert
    rect(595, 200, 10, 400);
    rect(200, 600, 10, 200);

    if (gOpen == false) fill(255, 0, 0); //Barrier
    if (key1 == true && key2 == true && key3 == true) gOpen = true;
    if (gOpen == true) fill(255, 200, 200);
    rect(0, 595, 200, 10);

    fill(0, 0, 255); //Exit
    rect(0, 605, 5, 200);
  }
}
