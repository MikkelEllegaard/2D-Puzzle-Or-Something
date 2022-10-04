boolean key1 = false;
boolean key2 = false;
boolean key3 = false;
boolean gOpen = false;

void map() {
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

    if (gOpen == false) {
    fill(255, 0, 0); //Barrier
    if (key1 == true && key2 == true && key3 == true) gOpen = true;
      if(gOpen == true) {
        fill(255,100,100);
        }
    rect(0, 595, 200, 10);
    }

    fill(0, 0, 255); //Exit
    rect(0, 605, 5, 200);
  }
