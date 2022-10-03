void map() {
  boolean key1 = false;
  boolean key2 = false;
  boolean key3 = false;
  
  if (key1 == false) fill(255,128,0); //key1
  else if (key1 == true) noFill();
  square(275,75,50);
  if(Ppx >= 275 && Ppx <= 375 &&
  Ppy >= 75 && Ppy <= 175 && key1 == false) key1 = true;
  
  if (key2 == false) fill(255,128,0); //key2
  else if (key2 == true) noFill();
  square(675,275,50);
  if(Ppx >= 675 && Ppx <= 775 &&
  Ppy >= 275 && Ppy <= 375 && key2 == false) key2 = true;
  
  if (key3 == false) fill(255,128,0); //key3
  else if (key3 == true) noFill();
  square(475,675,50);
  if(Ppx >= 475 && Ppx <= 575 &&
  Ppy >= 675 && Ppy <= 775 && key3 == false) key3 = true;
  
  fill(0); //walls
  rect(0,395,200,10);
  rect(200,195,200,10);
  rect(395,0,10,205);
  rect(400,395,400,10);
  rect(595,200,10,400);
  rect(200,600,10,200);
  rect(200,595,200,10);
  
  fill(255,0,0); //Barrier
  rect(0,595,200,10);
  
  fill(0,0,255); //Exit
  rect(0,605,5,200);
}
