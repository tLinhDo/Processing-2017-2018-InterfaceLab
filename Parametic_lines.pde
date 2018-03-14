static final int NUM_LINES = 50;

float t;

void setup() {
  background(20);
  size (1000, 1000);
}

void draw() {
  background(3);
  stroke(0,134,139);
  strokeWeight(3);
  translate(width/2, height/2); //bezieht sich auf Punkt und gibt Position des Punktes an, 
  for (int i = 0; i < NUM_LINES; i++) {
  line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  line(x3(-t + i), y3(t + i), x4(-t + i), y4(t + i));
  //point(x5(t +i), y5(t +i));
  }
  t+=0.2;
  
}
float x1(float t) {
  return sin(-t / 10) * 100 + sin(t / 5) * 20;
}

float y1(float t) {
  return cos(t / 10) *100; // rechenzeichen bestimmt Frequenz der Funktion
  
}

float x2(float t) {
  return sin(t / 10) * 200 + sin(t / 5) * 2;
}

float y2(float t) {
  return cos(t / 20) * 200 + cos(t /12) * 20; // rechenzeichen bestimmt Frequenz der Funktion
  
}

float x3(float t) {
  return sin(-t / 10) * 100 + sin(t / 5) * 20;
}

float y3(float t) {
  return cos(t / 10) *100; // rechenzeichen bestimmt Frequenz der Funktion
  
}

float x4(float t) {
  return sin(t / 10) * 200 + sin(t / 5) * 2;
}

float y4(float t) {
  return cos(t / 20) * 200 + cos(t /12) * 20; // rechenzeichen bestimmt Frequenz der Funktion
  
}