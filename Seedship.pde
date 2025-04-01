ArrayList<Planet> planets = new ArrayList<Planet>();
GUI [] GUI = new GUI[1];
Ship [] ship = new Ship[1];
Dilemma [] dilemma = new Dilemma[1];

color varColorOne, varColorTwo, varColorThree, varColorFour;
int varSizeOne, varSizeTwo, varSizeThree, varSizeFour;
int timerTwoStart = millis();
int timerStart = millis();
int timerTwoLength = 100;
int timerLength = 100;
int journeyLength = 0;
int screenState = 0;
int timerTwoElapsed;
int timerElapsed;
boolean colonize;
int probes = 10;
int score;

String problem;
String answerOne, answerTwo;
String allData;

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
  dilemma[0] = new Dilemma();
  
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
  varColorOne = color(0); varColorTwo = color(0); varColorThree = color(0); varColorFour = color(0);
  varSizeOne = 0; varSizeTwo = 0; varSizeThree = 0; varSizeFour = 0;
  if( screenState == 0 ) {
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 400 && mouseY < 500 ) ) {
      varColorOne = color(255, 255, 0);
      varSizeOne = 50;
    }
    else {
      varColorOne = color(255);
      varSizeOne = 48;
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 550 && mouseY < 650 ) ) {
      varColorTwo = color(255, 255, 0);
      varSizeTwo = 50;
    }
    else {
      varColorTwo = color(255);
      varSizeTwo = 48;
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 700 && mouseY < 800 ) ) {
      varColorThree = color(255, 255, 0);
      varSizeThree = 50;
    }
    else {
      varColorThree = color(255);
      varSizeThree = 48;
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 850 && mouseY < 950 ) ) {
      varColorFour = color(255, 255, 0);
      varSizeFour = 50;
    }
    else {
      varColorFour = color(255);
      varSizeFour = 48;
    }
    GUI[0].menu();
  }
  if( screenState == 1 ) {
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 750 && mouseY < 850 ) ) {
      varColorOne = color(255, 255, 0);
      varSizeOne = 50;
    }
    else {
      varColorOne = color(255);
      varSizeOne = 48;
    }
    GUI[0].monologue();
  }
  if( screenState == 2 ) {
    timerElapsed = millis() - timerStart;
    timerTwoElapsed = 0;
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 400 && mouseY < 500 ) ) {
      varColorOne = color(255, 255, 0);
      varSizeOne = 50;
    }
    else {
      varColorOne = color(255);
      varSizeOne = 48;
    }
    GUI[0].planetHUD();
    GUI[0].interactHUD();
  }
  if( screenState == 3 ) {
    timerTwoElapsed = millis() - timerTwoStart;
    varColorOne = color(255);
    varSizeOne = 24;
    varColorTwo = color(255);
    varSizeTwo = 24;
    if( ( mouseX > 200 && mouseX < 1300 ) &&
        ( mouseY > 775 && mouseY < 825 ) ) {
      varColorOne = color(255, 255, 0);
      varSizeOne = 32;
    }
    if( ( mouseX > 200 && mouseX < 1300 ) &&
        ( mouseY > 875 && mouseY < 925 ) ) {
      varColorTwo = color(255, 255, 0);
      varSizeTwo = 32;
    }
    GUI[0].dilemmas();
  }
  if( screenState == 4 ) {
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 850 && mouseY < 950 ) ) {
      varColorFour = color(255, 255, 0);
      varSizeFour = 50;
    }
    else {
      varColorFour = color(255);
      varSizeFour = 48;
    }
    ship[0].scoreCount();
    GUI[0].endScreen();
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
      timerStart = millis();
    }
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 550 && mouseY < 650 ) ) {
      screenState = 2;
      loadGame();
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
      if( timerElapsed >= timerLength ) {
        dilemma[0].callDilemma();
        screenState = 3;
      }
    }
    if ( dist( mouseX, mouseY, 450, 800) < 100) {
      if ( timerElapsed >= timerLength ) {
        colonize = true;
      }
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
    if( colonize == true ) {
      if( ( mouseX > 600 && mouseX < 900 ) &&
          ( mouseY > 400 && mouseY < 500 ) ) {
        screenState = 4;
        colonize = false;
      }
    }
  }
  
  //Click Attempts for the dilemma screen
  if( screenState == 3 ) {
    if( timerTwoElapsed >= timerTwoLength ) {
    //Click Attempts for first choice option.
      if( ( mouseX > 200 && mouseX < 1300 ) &&
          ( mouseY > 775 && mouseY < 825 ) ) {
        if( answerOne.contains("resource") ) {
          ship[0].scannerResource = ship[0].scannerResource - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("atmospheric") ) {
          ship[0].scannerAtmosphere = ship[0].scannerAtmosphere - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("water") ) {
          ship[0].scannerWater = ship[0].scannerWater - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("temperature") ) {
          ship[0].scannerTemp = ship[0].scannerTemp - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("science") ) {
          ship[0].science = ship[0].science - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("culture") ) {
          ship[0].culture = ship[0].culture - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("life support") ) {
          ship[0].colonists = ship[0].colonists - int(random(100) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("construction") ) {
          ship[0].construct = ship[0].construct - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("gravity") ) {
          ship[0].scannerGravity = ship[0].scannerGravity - int(random(40) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        else {
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        saveGame();
      }
      
      //Click attempts for the 2nd choice option
      if( ( mouseX > 200 && mouseX < 1300 ) &&
          ( mouseY > 875 && mouseY < 925 ) ) {
        if( answerTwo.contains("resource") ) {
          ship[0].scannerResource = ship[0].scannerResource - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains("atmospheric") ) {
          ship[0].scannerAtmosphere = ship[0].scannerAtmosphere - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains("water") ) {
          ship[0].scannerWater = ship[0].scannerWater - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains("temperature") ) {
          ship[0].scannerTemp = ship[0].scannerTemp - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains("science") ) {
          ship[0].science = ship[0].science - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains("culture") ) {
          ship[0].culture = ship[0].culture - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains("life support") ) {
          ship[0].colonists = ship[0].colonists - int(random(50) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerTwo.contains(" construction ") ) {
          ship[0].construct = ship[0].construct - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        if( answerOne.contains("gravity") ) {
          ship[0].scannerGravity = ship[0].scannerGravity - int(random(20) );
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        else {
          if ( planets.size() > 0) {
            planets.remove(0);
          }
          planets.add( new Planet() );
          screenState = 2;
        }
        saveGame();
      }
    }
  }
  if( screenState == 4 ) {
    if( ( mouseX > 600 && mouseX < 900 ) &&
        ( mouseY > 850 && mouseY < 950 ) ) {
      finalSave();
      screenState = 0;
    }
  }
}

//Save feature for mid-game saving
void saveGame() {
  try
  {
    //Use a PrintWriter to send your information to a chosen file
    PrintWriter pw = createWriter( "save.txt" );

    //Saves state of current planet
    pw.println( planets.get(0).atmosphere );
    pw.println( planets.get(0).water );
    pw.println( planets.get(0).gravity );
    pw.println( planets.get(0).temp );
    pw.println( planets.get(0).resource );
    pw.println( planets.get(0).hasMoon );
    pw.println( planets.get(0).hasStorms );
    pw.println( planets.get(0).hasPlants );
    pw.println( planets.get(0).hasAnimals );
    pw.println( planets.get(0).hasCiv );
    pw.println( planets.get(0).moonRich );
    pw.println( planets.get(0).moonDie );
    pw.println( planets.get(0).moonNorm );
    pw.println( planets.get(0).plantsGood );
    pw.println( planets.get(0).plantsBad );
    pw.println( planets.get(0).plantsNeutral );
    pw.println( planets.get(0).animalsGood );
    pw.println( planets.get(0).animalsBad );
    pw.println( planets.get(0).animalsNeutral );
    pw.println( planets.get(0).civDead );
    pw.println( planets.get(0).civTribe );
    pw.println( planets.get(0).civStone );
    pw.println( planets.get(0).civBronze );
    pw.println( planets.get(0).civMedieval );
    pw.println( planets.get(0).civIndustrial );
    pw.println( planets.get(0).civModern );
    pw.println( planets.get(0).civSpace );
    pw.println( planets.get(0).probed );
    //Saves state of ship
    pw.println( ship[0].scannerAtmosphere );
    pw.println( ship[0].scannerWater );
    pw.println( ship[0].scannerGravity );
    pw.println( ship[0].scannerTemp );
    pw.println( ship[0].scannerResource );
    pw.println( ship[0].upgradeAtmosphere );
    pw.println( ship[0].upgradeWater );
    pw.println( ship[0].upgradeGravity );
    pw.println( ship[0].upgradeTemp );
    pw.println( ship[0].upgradeResource );
    pw.println( ship[0].construct );
    pw.println( ship[0].colonists );
    pw.println( ship[0].science );
    pw.println( ship[0].culture );
    pw.println( probes );

    pw.flush(); //Writes the remaining data to the file
    pw.close(); //Finishes the file
  }
  catch(Exception e)
  {
    println("SOMETHING WENT WRONG WHILE SAVING");
  }
}

//Load feature for mid-game loading
void loadGame()
{
  try
  {
    //Use the loadStrings() method to pull the lines of your save file into a String array
    String [] data = loadStrings("save.txt"); // <- This will be the name of the save file
    //Loads planetary information
    planets.get(0).atmosphere = Integer.parseInt(data[0]);
    planets.get(0).water = Integer.parseInt(data[1]);
    planets.get(0).gravity = Integer.parseInt(data[2]);
    planets.get(0).temp = Integer.parseInt(data[3]);
    planets.get(0).resource = Integer.parseInt(data[4]);
    planets.get(0).hasMoon = Boolean.parseBoolean(data[5]);
    planets.get(0).hasStorms = Boolean.parseBoolean(data[6]);
    planets.get(0).hasPlants = Boolean.parseBoolean(data[7]);
    planets.get(0).hasAnimals = Boolean.parseBoolean(data[8]);
    planets.get(0).hasCiv = Boolean.parseBoolean(data[9]);
    planets.get(0).moonRich = Boolean.parseBoolean(data[10]);
    planets.get(0).moonDie = Boolean.parseBoolean(data[11]);
    planets.get(0).moonNorm = Boolean.parseBoolean(data[12]);
    planets.get(0).plantsGood = Boolean.parseBoolean(data[13]);
    planets.get(0).plantsBad = Boolean.parseBoolean(data[14]);
    planets.get(0).plantsNeutral = Boolean.parseBoolean(data[15]);
    planets.get(0).animalsGood = Boolean.parseBoolean(data[16]);
    planets.get(0).animalsBad = Boolean.parseBoolean(data[17]);
    planets.get(0).animalsNeutral = Boolean.parseBoolean(data[18]);
    planets.get(0).civDead = Boolean.parseBoolean(data[19]);
    planets.get(0).civTribe = Boolean.parseBoolean(data[20]);
    planets.get(0).civStone = Boolean.parseBoolean(data[21]);
    planets.get(0).civBronze = Boolean.parseBoolean(data[22]);
    planets.get(0).civMedieval = Boolean.parseBoolean(data[23]);
    planets.get(0).civIndustrial = Boolean.parseBoolean(data[24]);
    planets.get(0).civModern = Boolean.parseBoolean(data[25]);
    planets.get(0).civSpace = Boolean.parseBoolean(data[26]);
    planets.get(0).probed = Boolean.parseBoolean(data[27]);
    //Loads ship data
    ship[0].scannerAtmosphere = Integer.parseInt(data[28]);
    ship[0].scannerWater = Integer.parseInt(data[29]);
    ship[0].scannerGravity = Integer.parseInt(data[30]);
    ship[0].scannerTemp = Integer.parseInt(data[31]);
    ship[0].scannerResource = Integer.parseInt(data[32]);
    ship[0].upgradeAtmosphere = Integer.parseInt(data[33]);
    ship[0].upgradeWater = Integer.parseInt(data[34]);
    ship[0].upgradeGravity = Integer.parseInt(data[35]);
    ship[0].upgradeTemp = Integer.parseInt(data[36]);
    ship[0].upgradeResource = Integer.parseInt(data[37]);
    ship[0].construct = Integer.parseInt(data[38]);
    ship[0].colonists = Integer.parseInt(data[39]);
    ship[0].science = Integer.parseInt(data[40]);
    ship[0].culture = Integer.parseInt(data[41]);
    probes = Integer.parseInt(data[42]);
  }
  catch(Exception e)
  {
    println("SOMETHING WENT WRONG WHILE LOADING");
  }
}

void finalSave() {
   try {
     PrintWriter pw = createWriter( "finalSaves.txt" );
     
    //Saves state of current planet
    pw.println( planets.get(0).atmosphere );
    pw.println( planets.get(0).water );
    pw.println( planets.get(0).gravity );
    pw.println( planets.get(0).temp );
    pw.println( planets.get(0).resource );
    pw.println( planets.get(0).hasMoon );
    pw.println( planets.get(0).hasStorms );
    pw.println( planets.get(0).hasPlants );
    pw.println( planets.get(0).hasAnimals );
    pw.println( planets.get(0).hasCiv );
    pw.println( planets.get(0).moonRich );
    pw.println( planets.get(0).moonDie );
    pw.println( planets.get(0).moonNorm );
    pw.println( planets.get(0).plantsGood );
    pw.println( planets.get(0).plantsBad );
    pw.println( planets.get(0).plantsNeutral );
    pw.println( planets.get(0).animalsGood );
    pw.println( planets.get(0).animalsBad );
    pw.println( planets.get(0).animalsNeutral );
    pw.println( planets.get(0).civDead );
    pw.println( planets.get(0).civTribe );
    pw.println( planets.get(0).civStone );
    pw.println( planets.get(0).civBronze );
    pw.println( planets.get(0).civMedieval );
    pw.println( planets.get(0).civIndustrial );
    pw.println( planets.get(0).civModern );
    pw.println( planets.get(0).civSpace );
    pw.println( planets.get(0).probed );
    //Saves state of ship
    pw.println( ship[0].scannerAtmosphere );
    pw.println( ship[0].scannerWater );
    pw.println( ship[0].scannerGravity );
    pw.println( ship[0].scannerTemp );
    pw.println( ship[0].scannerResource );
    pw.println( ship[0].upgradeAtmosphere );
    pw.println( ship[0].upgradeWater );
    pw.println( ship[0].upgradeGravity );
    pw.println( ship[0].upgradeTemp );
    pw.println( ship[0].upgradeResource );
    pw.println( ship[0].construct );
    pw.println( ship[0].colonists );
    pw.println( ship[0].science );
    pw.println( ship[0].culture );
    pw.println( probes );
    pw.println();

    pw.flush(); //Writes the remaining data to the file
    pw.close(); //Finishes the file
   }
   catch( Exception E ) {
     println("Failure saving exit save"); 
   }
}

void finalLoad( int loadNum ) {
  
    String [] data = loadStrings("save.txt");
  
    planets.get(0).atmosphere = Integer.parseInt(data[0 + loadNum]);
    planets.get(0).water = Integer.parseInt(data[1 + loadNum]);
    planets.get(0).gravity = Integer.parseInt(data[2 + loadNum]);
    planets.get(0).temp = Integer.parseInt(data[3 + loadNum]);
    planets.get(0).resource = Integer.parseInt(data[4 + loadNum]);
    planets.get(0).hasMoon = Boolean.parseBoolean(data[5 + loadNum]);
    planets.get(0).hasStorms = Boolean.parseBoolean(data[6 + loadNum]);
    planets.get(0).hasPlants = Boolean.parseBoolean(data[7 + loadNum]);
    planets.get(0).hasAnimals = Boolean.parseBoolean(data[8 + loadNum]);
    planets.get(0).hasCiv = Boolean.parseBoolean(data[9 + loadNum]);
    planets.get(0).moonRich = Boolean.parseBoolean(data[10 + loadNum]);
    planets.get(0).moonDie = Boolean.parseBoolean(data[11 + loadNum]);
    planets.get(0).moonNorm = Boolean.parseBoolean(data[12 + loadNum]);
    planets.get(0).plantsGood = Boolean.parseBoolean(data[13 + loadNum]);
    planets.get(0).plantsBad = Boolean.parseBoolean(data[14 + loadNum]);
    planets.get(0).plantsNeutral = Boolean.parseBoolean(data[15 + loadNum]);
    planets.get(0).animalsGood = Boolean.parseBoolean(data[16 + loadNum]);
    planets.get(0).animalsBad = Boolean.parseBoolean(data[17 + loadNum]);
    planets.get(0).animalsNeutral = Boolean.parseBoolean(data[18 + loadNum]);
    planets.get(0).civDead = Boolean.parseBoolean(data[19 + loadNum]);
    planets.get(0).civTribe = Boolean.parseBoolean(data[20 + loadNum]);
    planets.get(0).civStone = Boolean.parseBoolean(data[21 + loadNum]);
    planets.get(0).civBronze = Boolean.parseBoolean(data[22 + loadNum]);
    planets.get(0).civMedieval = Boolean.parseBoolean(data[23 + loadNum]);
    planets.get(0).civIndustrial = Boolean.parseBoolean(data[24 + loadNum]);
    planets.get(0).civModern = Boolean.parseBoolean(data[25 + loadNum]);
    planets.get(0).civSpace = Boolean.parseBoolean(data[26 + loadNum]);
    planets.get(0).probed = Boolean.parseBoolean(data[27 + loadNum]);
    //Loads ship data
    ship[0].scannerAtmosphere = Integer.parseInt(data[28 + loadNum]);
    ship[0].scannerWater = Integer.parseInt(data[29 + loadNum]);
    ship[0].scannerGravity = Integer.parseInt(data[30 + loadNum]);
    ship[0].scannerTemp = Integer.parseInt(data[31 + loadNum]);
    ship[0].scannerResource = Integer.parseInt(data[32 + loadNum]);
    ship[0].upgradeAtmosphere = Integer.parseInt(data[33 + loadNum]);
    ship[0].upgradeWater = Integer.parseInt(data[34 + loadNum]);
    ship[0].upgradeGravity = Integer.parseInt(data[35 + loadNum]);
    ship[0].upgradeTemp = Integer.parseInt(data[36 + loadNum]);
    ship[0].upgradeResource = Integer.parseInt(data[37 + loadNum]);
    ship[0].construct = Integer.parseInt(data[38 + loadNum]);
    ship[0].colonists = Integer.parseInt(data[39 + loadNum]);
    ship[0].science = Integer.parseInt(data[40 + loadNum]);
    ship[0].culture = Integer.parseInt(data[41 + loadNum]);
    probes = Integer.parseInt(data[42 + loadNum]);
}
