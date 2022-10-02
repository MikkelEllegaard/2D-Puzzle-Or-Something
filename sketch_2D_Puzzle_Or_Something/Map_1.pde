void map() {
  boolean key1 = false;
  boolean key2 = false;
  boolean key3 = false;
  
  fill(255,128,0); //keys
  square(275,75,50);
  square(675,275,50);
  square(475,675,50);
  
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
