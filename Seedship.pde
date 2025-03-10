ArrayList<Planet> planets = new ArrayList<Planet>();
GUI [] GUI = new GUI[1];

int probes = 10;

void setup() {
  size(1500, 1000);
  background(255);
  imageMode(CENTER);
  rectMode(CENTER);
  noStroke();
  textAlign(CENTER);
  planets.add( new Planet() );

  GUI[0] = new GUI();
}

void draw() {
  background(255);
  GUI[0].planetHUD();
  GUI[0].interactHUD();
}

void mousePressed() {
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
