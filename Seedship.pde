ArrayList<Planet> planets = new ArrayList<Planet>();
GUI [] GUI = new GUI[1];
Ship [] ship = new Ship[1];

int journeyLength = 0;
int screenState = 0;
int probes = 10;

PFont font;
PImage seedship;

void setup() {
  size(1500, 1000);
  font = createFont("rift.ttf", 48);
  seedship = loadImage("Seedship.png");
  setupMeta();
}

//Function to keep setup() clean
void setupMeta() {
  GUI[0] = new GUI();
  ship[0] = new Ship();
  
  background(255);
  imageMode(CENTER);
  rectMode(CENTER);
  noStroke();
  textAlign(CENTER);
  planets.add( new Planet() );
  textFont(font);
}

void draw() {
  background(0, 0, 40);
  drawMeta();
}

//Function to keep draw() clean
void drawMeta() {
  if( screenState == 0 ) {
    GUI[0].menu();
  }
  if( screenState == 1 ) {
    GUI[0].monologue();
  }
  if( screenState == 2 ) {
    GUI[0].planetHUD();
    GUI[0].interactHUD();
  }
}

void mousePressed() {
  clickAttempt();
}


void clickAttempt() {
  //Click attempts for the menu screen
  if( screenState == 0 ) {
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 400 && mouseY < 500 ) ) {
      screenState = 1;
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 550 && mouseY < 650 ) ) {
      screenState = 1;
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 700 && mouseY < 800 ) ) {
      screenState = 1;
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 850 && mouseY < 950 ) ) {
      exit();
    }
  }
  
  //Click Attempts for the monologue screen
  if( screenState == 1 ) {
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 750 && mouseY < 850 ) ) {
      screenState = 2;
    }
  }
  
  //Click Attempts for the planet screen
  if( screenState == 2 ) {
    if ( dist( mouseX, mouseY, 750, 800) < 100) {
      if ( planets.size() > 0) {
        planets.remove(0);
      }
      planets.add( new Planet() );
    }
    if ( dist( mouseX, mouseY, 1050, 800) < 100) {
      if ( probes > 0 && planets.get(0).probed == false ) {
        probes --;
        planets.get(0).probed = true;
      }
      else if ( probes <= 0 && planets.get(0).probed == false) {
        println("ERROR: No Probes");
        return;
      }
      else {
        println("ERROR: Cannot Probe");
        return;
      }
    }
  }
}
