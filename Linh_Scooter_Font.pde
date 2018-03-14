PFont myFont;
PImage Fish;
PImage Scooter;
int xPos = 0;
int yPos = 0;
int counter = 0;
int counter2 = 0;
int r = int(random(0, 255));
int g = int(random(0, 255));
int b = int(random(0, 255));

void setup() {
  background(0);
  size(1000, 600); 
  Fish = loadImage("Fish.png");
  Scooter = loadImage("Scooter.png");
  
   xPos = int(random(0, 1000 - Fish.width + 20));
  yPos = int(random(0, 600 - Fish.height + 30));
}

void draw() {
  String[] fontList = PFont.list();
    myFont = createFont(fontList[671], 32);
    textFont(myFont);

  background(74,105,201);
  
//counter sorgt dafür, dass bei jedem 20. Durchlauf neue Koordinaten für Bild erstellt werden
  if (counter == 18) {
    xPos = int(random(0, 1000 - Fish.width + 20));
    yPos = int(random(0, 600 - Fish.height + 30));
    counter = 0; //fängt bei 0 wieder von vorn an
  }

  image(Fish, xPos, yPos);
  tint(255, 200);  // Transparenz d.Bildes
  

  if (mousePressed) {
    //myFont = createFont(fontList[671], 32);
    //textFont(myFont);
    
    if (counter2 == 5) {
    r = int(random(0, 255));
    g = int(random(0, 255));
    b = int(random(0, 255));
    counter2 = 0;
  }
  counter2++;
  background(r, g, b);
  
  if (counter == 20) {
      xPos = int(random(0, 1000 - Scooter.width + 20));
      yPos = int(random(0, 600 - Scooter.height + 30));
      counter = 0; 
    }
   
    image(Scooter, xPos, yPos);
    tint(255, 200);

    textAlign(CENTER, CENTER);
    text("HYPER! HYPER!", width/2, height/2);
    
   
  } else {

   
    textAlign(CENTER, CENTER);
    text("How much is the fish?", width/2, height/2);
  }

  counter++;
  
}