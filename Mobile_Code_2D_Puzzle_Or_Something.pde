int Ppx = 0;
int Ppy = 0;
boolean Map1 = false;
boolean Map2 = false;
boolean noClip = false;
boolean Homescreen = true;
boolean Controls = true;
boolean HowToPlay = false;
boolean About = false;
boolean Map1S = false;
boolean Map2S = false;
boolean DevMode = false;

void setup () {
  size(800, 1050);
}

void draw() {
  background(250);
  map1();
  map2();
  devmode();
  player();
  homescreen();
  lines();
}

void devmode() {
  if (DevMode == true) {
    textSize(20);
    fill(0);
    text("Ppx:", 200, 820);
    text(Ppx, 250, 820);
    text("Ppy:", 430, 820);
    text(Ppy, 480, 820);

    if (noClip == false) text("noClip: false", 10, 850);
    else if (noClip == true) text("noClip: true", 10, 850);
    if (Controls == false) text("Controls: false", 10, 880);
    else if (Controls == true) text("Controls: true", 10, 880);
    if (Homescreen == false) text("Homescreen: false", 140, 880);
    else if (Homescreen == true) text("Homescreen: true", 140, 880);
    if (HowToPlay == false) text("HowToPlay: false", 10, 910);
    else if (HowToPlay == true) text("HowToPlay: true", 10, 910);
    if (About == false) text("About: false", 170, 910);
    else if (About == true) text("About: true", 170, 910);
    if (HTPm2 == false) text("HTPm2: false", 10, 940);
    else if (HTPm2 == true) text("HTPm2: true", 10, 940);

    if (Map1 == false) text("Map1: false", 300, 850);
    else if (Map1 == true) {
      text("Map1: true", 300, 850);
      text("Map1", 600, 850);
      if (gOpen1 == false) text("gOpen1: false", 600, 880);
      else if (gOpen1 == true) text("gOpen1: true", 600, 880);
      if (key11 == false) text("key11: false", 600, 910);
      else if (key11 == true) text("key11: true", 600, 910);
      if (key12 == false) text("key12: false", 600, 940);
      else if (key12 == true) text("key12: true", 600, 940);
      if (key13 == false) text("key13: false", 600, 970);
      else if (key13 == true) text("key13: true", 600, 970);
    }
    if (Map1S == false) text("Map1S: false", 400, 850);
    else if (Map1S == true) text("Map1S: true", 400, 850);
    if (Map2 == false) text("Map2: false", 300, 880);
    else if (Map2 == true) {
      text("Map2: true", 300, 880);
      text("Map2", 600, 850);
      //if (gOpen2 == false) text("gOpen2: false", 600, 880);
      //else if (gOpen2 == true) text("gOpen2: true", 600, 880);
      if (lever1 == false) text("lever1: false", 600, 910);
      else if (lever1 == true) text("lever1: true", 600, 910);
      if (key21 == 2) text("key21: 2", 600, 940);
      else if (key21 == 1) text("key21: 1", 600, 940);
      else if (key21 == 0) text("key21: 0", 600, 940);
      if (key22 == 2) text("key22: 2", 600, 970);
      else if (key22 == 1) text("key22: 1", 600, 970);
      else if (key22 == 0) text("key22: 0", 600, 970);
      if (key23 == 2) text("key23: 2", 600, 1000);
      else if (key23 == 1) text("key23: 1", 600, 1000);
      else if (key23 == 0) text("key23: 0", 600, 1000);
    }
    if (Map2S == false) text("Map2S: false", 400, 880);
    else if (Map2S == true) text("Map2S: true", 400, 880);

    noFill();
  }
}

void lines() {
  line(0, 100, 800, 100); //h
  line(0, 200, 800, 200);
  line(0, 300, 800, 300);
  line(0, 400, 800, 400);
  line(0, 500, 800, 500);
  line(0, 600, 800, 600);
  line(0, 700, 800, 700);
  line(0, 900, 800, 900);
  strokeWeight(4);
  line(0, 800, 800, 800);

  strokeWeight(1);
  line(100, 0, 100, 1050); //v
  line(200, 0, 200, 1050);
  line(300, 0, 300, 1050);
  line(400, 0, 400, 1050);
  line(500, 0, 500, 1050);
  line(600, 0, 600, 1050);
  line(700, 0, 700, 1050);
}

void player() {
  fill(0, 255, 0);
  if (Map1 == true && Map1S == false) {
    Ppx = 50;
    Ppy = 450;
    Map1S = true;
  }
  if (Map2 == true && Map2S == false) {
    Ppx = 50;
    Ppy = 50;
    Map2S = true;
  }
  rect(Ppx, Ppy, 100, 100);
}

///////////////////////////////////////////////////2D puzzle ...
///////////////////////////////////////////////////homescreen

boolean HTPm2 = false;

void homescreen() {
  if (Homescreen == true) {
    fill(0);
    noFill();
    strokeWeight(4);
    textSize(20);
    if (Ppy > 700) text("That was intended :)", Ppx+100, Ppy);
    textSize(20);
    text("You Can Move", 300, 820);
    if (Controls == true) {
      rect(100, 150, 600, 500);
      textSize(50);
      rect(200, 300, 200, 200);
      rect(400, 300, 200, 200);
      textSize(40);
      text("Use WASD", 220, 400);
      text("To Move", 230, 450);
      textSize(75);
      text("Controls", 275, 250);
      textSize(45);
      text("Press 'e' To Continue", 200, 600);
      textSize(30);
      text("Press 'q'", 450, 380);
      text("To Go Back", 430, 410);
      text("To Homescreen", 405, 440);
    }
    if (HowToPlay == false && About == false && Controls == false) {
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
      rect(600, 175, 50, 50);
      fill(0);
      text("These are keys", 100, 250);
      if (HTPm2 == false) text("For more tips, reach more levels", 100, 400);
      else {
        fill(128);
        rect(600, 375, 50, 50);
        fill(0);
        text("These are levers. 1 key required", 100, 450);
      }
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

///////////////////////////////////////////////////homescreen
///////////////////////////////////////////////////input stuff

void keyPressed() {

  if (Map2 == true && Ppx <= 125 && Ppy >= 175 && Ppy <= 325 && (key21 == 0 || key22 == 0 || key23 == 0)) {
    if (key == 'e') {
      lever1 = true;
      if (key21 == 0) {
        key22 = 2;
        key23 = 2;
      } else if (key22 == 0) {
        key21 = 2;
        key23 = 2;
      } else if (key23 == 0) {
        key21 = 2;
        key22 = 2;
      }
    }
  }

  if (key == 'm') DevMode = true;

  if (key == 'q') { //Goes back to main menu
    Ppx = 0;
    Ppy = 0;
    Map1 = false;
    Map2 = false;
    noClip = false;
    Homescreen = true;
    Controls = true;
    HowToPlay = false;
    About = false;
    Map1S = false;
    Map2S = false;
    key11 = false;
    key12 = false;
    key13 = false;
    gOpen1 = false;
    key21 = 2;
    key22 = 2;
    key23 = 2;
    lever1 = false;
    gOpen2 = false;
  }

  if (Controls == true && key == 'e') Controls = false;

  if (Homescreen == true) {
    if (key == 'w') Ppy = Ppy - 5;
    if (key == 'a') Ppx = Ppx - 5;
    if (key == 's') Ppy = Ppy + 5;
    if (key == 'd') Ppx = Ppx + 5;
  }

  if (noClip == true) {
    if (key == 'p') {
      noClip = false;
    }
    if (key == 'w') Ppy = Ppy - 10;
    if (key == 'a') Ppx = Ppx - 10;
    if (key == 's') Ppy = Ppy + 10;
    if (key == 'd') Ppx = Ppx + 10;
  } else if (noClip == false) {
    if (key == 'p') {
      noClip = true;
    }

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
          !(Ppy == 495 && Ppx > 200 && Ppx < 400) &&
          !(gOpen1 == false && Ppx < 100 && Ppy == 495)) Ppy = Ppy + 5;
      }
      if (key == 'd') {
        if (!(Ppx == 700) &&
          !(Ppx == 100 && Ppy > 95 && Ppy < 205) &&
          !(Ppx == 100 && Ppy > 495) &&
          !(Ppx == 295 && Ppy < 200) &&
          !(Ppx == 300 && Ppy > 295 && Ppy < 405) &&
          !(Ppx == 495 && Ppy > 100 && Ppy < 600)) Ppx = Ppx + 5;
      }
    }

    if (Map2 == true) {
      if (key == 'w') {
        if (!(Ppy == 0) &&
          !(Ppx < 200 && Ppy == 205) &&
          !(Ppx > 400 && Ppx < 500 && Ppy == 205) &&
          !(Ppx > 295 && Ppx < 405 && Ppy == 400) &&
          !(Ppx > 495 && Ppx < 605 && Ppy == 400) &&
          !(Ppx < 200 && Ppy == 405) &&
          !(Ppx > 300 && Ppx < 500 && Ppy == 605)) Ppy = Ppy - 5;
      }
      if (key == 'a') {
        if (!(Ppx == 0) &&
          !(Ppx == 200 && Ppy > 95 && Ppy < 205) &&
          !(Ppx == 200 && Ppy > 295 && Ppy < 405) &&
          !(Ppx == 205 && Ppy > 500) &&
          !(Ppx == 405 && Ppy < 400) &&
          !(Ppx == 605 && Ppy > 95 && Ppy < 400) &&
          !(Ppx == 605 && Ppy > 495)) Ppx = Ppx - 5;
      }
      if (key == 's') {
        if (!(Ppy == 700) &&
          !(Ppx < 200 && Ppy == 95) &&
          !(Ppx > 400 && Ppx < 605 && Ppy == 95) &&
          !(Ppx < 200 && Ppy == 295) &&
          !(Ppx > 95 && Ppx < 205 && Ppy == 500) &&
          !(Ppx > 300 && Ppx < 605 && Ppy == 495) &&
          !(gOpen2 == false && Ppx > 605 && Ppy == 495)) Ppy = Ppy + 5;
      }
      if (key == 'd') {
        if (!(Ppx == 700) &&
          !(Ppx == 95 && Ppy > 500) &&
          !(Ppx == 295 && Ppy < 400) &&
          !(Ppx == 300 && Ppy > 495 && Ppy < 605) &&
          !(Ppx == 495 && Ppy > 200 && Ppy < 400) &&
          !(Ppx == 495 && Ppy > 600)) Ppx = Ppx + 5;
      }
    }
  }
}
void mouseClicked() {
  int x = mouseX;
  int y = mouseY;

  if (Homescreen == true) { //Homescreen
    if (x > 150 && x < 650 && y > 50 && y < 250 && Controls == false) HowToPlay = true; //How To Play button
    if (x > 150 && x < 650 && y > 300 && y < 500 && Controls == false) { //Play button
      Map1 = true;
      Homescreen = false;
    }
  }
  if (x > 150 && x < 650 && y > 550 && y < 750 && Controls == false) About = true; //About button

  if (Map1 == true && DevMode == true) {
    if (x > 700 && y > 700 && y < 800) {
      Map1 = false;
      Map2 = true;
    }
  }
}

///////////////////////////////////////////////////input stuff
///////////////////////////////////////////////////map1

boolean key11 = false;
boolean key12 = false;
boolean key13 = false;
boolean gOpen1 = false;

void map1() {
  if (Map1 == true) {
    if (DevMode == true) {
      fill(0, 0, 255);
      rect(700, 700, 100, 100);
      fill(0);
      textSize(50);
      text("SKIP", 700, 770);
      noFill();
    }

    if (key11 == false) { //key 1
      fill(255, 128, 0);
      if (Ppx > 175 && Ppx < 325 && Ppy < 125) {
        noFill();
        key11 = true;
      }
      rect(275, 75, 50, 50);
    }

    if (key12 == false) { //key 2
      fill(255, 128, 0);
      if (Ppx > 575 && Ppx < 725 && Ppy > 175 && Ppy < 325) {
        noFill();
        key12 = true;
      }
      rect(675, 275, 50, 50);
    }

    if (key13 == false) { //key 3
      fill(255, 128, 0);
      if (Ppx > 375 && Ppx < 525 && Ppy > 575 && Ppy < 725) {
        noFill();
        key13 = true;
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

    if (key11 == true && key12 == true && key13 == true) {
      fill(255, 200, 200);
      gOpen1 = true;
    } else fill(255, 0, 0);
    rect(0, 595, 200, 10);

    fill(0, 0, 255); //Exit
    rect(0, 605, 5, 195);

    if (Map1 == true && Ppy > 505 && Ppy < 800 && Ppx < 5) {
      Map1 = false;
      Map2 = true;
      HTPm2 = true;
    }
  }
}

///////////////////////////////////////////////////map1
///////////////////////////////////////////////////map2

// 2 = not picked up, 0 = picked up, 1 = pull lever
int key21 = 2;
int key22 = 2;
int key23 = 2;
boolean lever1 = false;
boolean gOpen2 = false;

void map2() {  
  if (Map2 == true) {

    if (Ppx > 500 && Ppy >= 695) {
    Ppx = 0;
    Ppy = 0;
    Map1 = false;
    Map2 = false;
    noClip = false;
    Homescreen = true;
    Controls = false;
    HowToPlay = false;
    About = false;
    Map1S = false;
    Map2S = false;
    key11 = false;
    key12 = false;
    key13 = false;
    gOpen1 = false;
    key21 = 2;
    key22 = 2;
    key23 = 2;
    lever1 = false;
    gOpen2 = false;
  }
    
    if (key21 == 2) { //key 1
      fill(255, 128, 0);
      if (Ppx > 375 && Ppx < 525 && Ppy < 125) {
        key21 = 0;
        if (lever1 == false) {
          key22 = 1;
          key23 = 1;
        }
      }
    } else if (key21 == 1) fill(255, 204, 153);
    if (key21 == 2 || key21 == 1) rect(475, 75, 50, 50);

    if (key22 == 2) { //key 2
      fill(255, 128, 0);
      if (Ppx > 575 && Ppx < 725 && Ppy > 175 && Ppy < 325 && key22 == 2) {
        key22 = 0;
        if (lever1 == false) {
          key21 = 1;
          key23 = 1;
        }
      }
    } else if (key22 == 1) fill(255, 204, 153);
    if (key22 == 2 || key22 == 1) rect(675, 275, 50, 50);

    if (key23 == 2) { //key 3
      fill(255, 128, 0);
      if (Ppx > 175 && Ppx < 325 && Ppy > 575 && Ppy < 725 && key23 == 2) {
        key23 = 0;
        if (lever1 == false) {
          key21 = 1;
          key22 = 1;
        }
      }
    } else if (key23 == 1) fill(255, 204, 153);
    if (key23 == 2 || key23 == 1) rect(275, 675, 50, 50);

    if (lever1 == false) { //lever
      fill(128, 128, 128);
      if (Ppx <= 125 && Ppy >= 175 && Ppy <= 325 && (key21 == 0 || key22 == 0 || key23 == 0)) {
        fill(0);
        textSize(20);
        text("Press e", Ppx+100, Ppy);
        fill(192, 192, 192);
      }
      rect(75, 275, 50, 50);
    }

    if (lever1 == true && key21 == 0 && key22 == 0 && key23 == 0) {
      fill(255, 200, 200);
      gOpen2 = true;
    } else fill(255, 0, 0);
    rect(605, 595, 205, 10);

    fill(0, 0, 255);
    rect(605, 795, 195, 5);

    fill(0);
    rect(0, 195, 200, 10); //h walls
    rect(400, 195, 205, 10);
    rect(0, 395, 200, 10);
    rect(400, 595, 205, 10);

    rect(395, 0, 10, 400); //v walls
    rect(595, 200, 10, 200);
    rect(195, 600, 10, 200);
    rect(595, 600, 10, 200);
  }
}
