int Ppx = 50;
int Ppy = 450;
boolean Map1 = true;

void setup () {
  size(800, 800);
}

void draw() {
  background(250);
  map();
  player();
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

void keyPressed() {
  if (Map1 == true) {
    if (key == 'w') {
      if (!(Ppy == 405 && Ppx < 200) && 
      !(Ppy == 205 && Ppx > 100 && Ppx < 405) && 
      !(Ppy == 605 && Ppx > 100 && Ppx < 400) && 
      !(Ppy == 405 && Ppx > 300) &&
      !(Ppy == 600 && Ppx > 495 && Ppx < 605)) Ppy = Ppy - 5;
    }
    if (key == 'a') {
      if (!(Ppy < 205 && Ppx == 405) &&
      !(Ppy > 100 && Ppy < 600 && Ppx == 605) &&
      !(Ppy > 295 && Ppy < 405 && Ppx == 200) &&
      !(Ppy > 495 && Ppy < 605 && Ppx == 400) &&
      !(Ppy > 600 && Ppx == 210)) Ppx = Ppx - 5;
    }
    if (key == 's') {
      if (!(Ppy == 95 && Ppx > 200 && Ppx < 405) &&
      !(Ppy == 100 && Ppx > 595 && Ppx < 605) &&
      !(Ppy == 295 && Ppx < 200) &&
      !(Ppy == 295 && Ppx > 400) &&
      !(Ppy == 495 && Ppx > 200 && Ppx < 400)) Ppy = Ppy + 5;
    }
    if (key == 'd') {
      Ppx = Ppx + 5;
    }
  }
}
