void setup () {
  size(800,800);
}

void draw() {
  background(250);
  map();
  player();
  lines();
}

void lines() {
  line(0,100,800,100); //h
  line(0,200,800,200);
  line(0,300,800,300);
  line(0,400,800,400);
  line(0,500,800,500);
  line(0,600,800,600);
  line(0,700,800,700);
  strokeWeight(4);
  line(0,800,800,800);
  
  strokeWeight(1);
  line(100,0,100,800); //v
  line(200,0,200,800);
  line(300,0,300,800);
  line(400,0,400,800);
  line(500,0,500,800);
  line(600,0,600,800);
  line(700,0,700,800);
}

void player() {
  fill(0,255,0);
  rect(50,450,100,100);
}
