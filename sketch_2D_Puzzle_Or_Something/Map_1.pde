boolean key1 = false;
boolean key2 = false;
boolean key3 = false;

void map() {
    if (key1 == false) { //key 1
      fill(255, 128, 0);
      if (Ppx > 175 && Ppx < 325 && Ppy < 125) {
        noFill();
        key1 = true;
      }
      square(275, 75, 50);
    }

    if (key2 == false) { //key 2
      fill(255, 128, 0);
      if (Ppx > 575 && Ppx < 725 && Ppy > 175 && Ppy < 325) {
        noFill();
        key2 = true;
      }
      square(675, 275, 50);
    }

    if (key3 == false) { //key 3
      fill(255, 128, 0);
      if (Ppx > 375 && Ppx < 525 && Ppy > 575 && Ppy < 725) {
        noFill();
        key3 = true;
      }
      square(475, 675, 50);
    }

    fill(0); //walls
    rect(0, 395, 200, 10); //hori
    rect(200, 195, 200, 10);
    rect(400, 395, 400, 10);
    rect(200, 595, 200, 10);
    
    rect(395, 0, 10, 205); //vert
    rect(595, 200, 10, 400);
    rect(200, 600, 10, 200);

    fill(255, 0, 0); //Barrier
    rect(0, 595, 200, 10);

    fill(0, 0, 255); //Exit
    rect(0, 605, 5, 200);
  }
