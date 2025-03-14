class GUI {
  void planetHUD() {
    int listTally = 0;
    int atmoHeight = 100;
    int wateHeight = 175;
    int gravHeight = 250;
    int resoHeight = 325;
    int tempHeight = 400;
    
    //Status bars
    push();
      fill(255);
      textSize(48);
      text("Planetary Stats", 150, 50);
    pop();
    push(); //Atmosphere bar
      fill(120);
      rect(500, 200, 60, 310);
      fill(255-(ship[0].scannerAtmosphere * 2.5), (ship[0].scannerAtmosphere * 2.5), 0 );
      rect(500, 200, 50, (ship[0].scannerAtmosphere * 3));
      textSize(20);
      text("Atmosphere", 500, 400);
    pop();
    push(); //Resource Bar
      fill(120);
      rect(600, 200, 60, 310);
      fill(255-(ship[0].scannerResource * 2.5), (ship[0].scannerResource * 2.5), 0 );
      rect(600, 200, 50, (ship[0].scannerResource * 3));
      textSize(20);
      text("Resource", 600, 400);
    pop();
    push(); //Gravity Bar
      fill(120);
      rect(700, 200, 60, 310);
      fill(255-(ship[0].scannerGravity * 2.5), (ship[0].scannerGravity * 2.5), 0 );
      rect(700, 200, 50, (ship[0].scannerGravity * 3));
      textSize(20);
      text("Gravity", 700, 400);
    pop();
    push(); //Water Bar
      fill(120);
      rect(800, 200, 60, 310);
      fill(255-(ship[0].scannerWater * 2.5), (ship[0].scannerWater * 2.5), 0 );
      rect(800, 200, 50, (ship[0].scannerWater * 3));
      textSize(20);
      text("Water", 800, 400);
    pop();
    push(); //Temperature Bar
      fill(120);
      rect(900, 200, 60, 310);
      fill(255-(ship[0].scannerTemp * 2.5), (ship[0].scannerTemp * 2.5), 0 );
      rect(900, 200, 50, (ship[0].scannerTemp * 3));
      textSize(20);
      text("Temperature", 900, 400);
    pop();
    push(); //Science Bar
      fill(120);
      rect(1000, 200, 60, 310);
      fill(255-(ship[0].science * 2.5), (ship[0].science * 2.5), 0 );
      rect(1000, 200, 50, (ship[0].science * 3));
      textSize(20);
      text("Science", 1000, 400);
    pop();
    push(); //Culture Bar
      fill(120);
      rect(400, 200, 60, 310);
      fill(255-(ship[0].culture * 2.5), (ship[0].culture * 2.5), 0 );
      rect(400, 200, 50, (ship[0].culture * 3));
      textSize(20);
      text("Culture", 400, 400);
    pop();
    push(); //Construction Bar
      fill(120);
      rect(1100, 200, 60, 310);
      fill(255-(ship[0].construct * 2.5), (ship[0].construct * 2.5), 0 );
      rect(1100, 200, 50, (ship[0].construct * 3));
      textSize(20);
      text("Construction", 1100, 400);
    pop();
    push();
      fill(255);
      text("Colonists: " + ship[0].colonists, 200, 550);
    pop();
    
    //Shows planetary text in text form
    //Atmosphere
    push();
      if( planets.get(0).atmosphere >= 80 ) {
        textSize(32);
        fill(0, 255, 0);
        text("Atmosphere: Excellent", 200, atmoHeight);
      }
      if( planets.get(0).atmosphere < 80 && planets.get(0).atmosphere >= 60 ) {
        textSize(32);
        fill(125, 255, 0);
        text("Atmosphere: Good", 200, atmoHeight);
      }
      if( planets.get(0).atmosphere < 60 && planets.get(0).atmosphere >= 40 ) {
        textSize(32);
        fill(255, 255, 0);
        text("Atmosphere: Acceptable", 200, atmoHeight);
      }
      if( planets.get(0).atmosphere < 40 && planets.get(0).atmosphere >= 20 ) {
        textSize(32);
        fill(255, 125, 0);
        text("Atmosphere: Poor", 200, atmoHeight);
      }
      if( planets.get(0).atmosphere < 20 ) {
        textSize(32);
        fill(255, 0, 0);
        text("Atmosphere: Nonexistant", 200, atmoHeight);
      }
    pop();
    
    //Water
    push();
      if( planets.get(0).water >= 80 ) {
        textSize(32);
        fill(0, 255, 0);
        text("Water: Excellent", 200, wateHeight);
      }
      if( planets.get(0).water < 80 && planets.get(0).water >= 60 ) {
        textSize(32);
        fill(125, 255, 0);
        text("Water: Good", 200, wateHeight);
      }
      if( planets.get(0).water < 60 && planets.get(0).water >= 40 ) {
        textSize(32);
        fill(255, 255, 0);
        text("Water: Acceptable", 200, wateHeight);
      }
      if( planets.get(0).water < 40 && planets.get(0).water >= 20 ) {
        textSize(32);
        fill(255, 125, 0);
        text("Water: Poor", 200, wateHeight);
      }
      if( planets.get(0).water < 20 ) {
        textSize(32);
        fill(255, 0, 0);
        text("Water: Nonexistant", 200, wateHeight);
      }
    pop();
    
    //Gravity
    push();
      if( planets.get(0).gravity >= 80 ) {
        textSize(32);
        fill(0, 255, 0);
        text("Gravity: Excellent", 200, gravHeight);
      }
      if( planets.get(0).gravity < 80 && planets.get(0).gravity >= 60 ) {
        textSize(32);
        fill(125, 255, 0);
        text("Gravity: Good", 200, gravHeight);
      }
      if( planets.get(0).gravity < 60 && planets.get(0).gravity >= 40 ) {
        textSize(32);
        fill(255, 255, 0);
        text("Gravity: Acceptable", 200, gravHeight);
      }
      if( planets.get(0).gravity < 40 && planets.get(0).gravity >= 20 ) {
        textSize(32);
        fill(255, 125, 0);
        text("Gravity: Poor", 200, gravHeight);
      }
      if( planets.get(0).gravity < 20 ) {
        textSize(32);
        fill(255, 0, 0);
        text("Gravity: Horrid", 200, gravHeight);
      }
    pop();
    
    //Temperature
    push();
      if( planets.get(0).temp >= 80 ) {
        textSize(32);
        fill(0, 255, 0);
        text("Temperature: Excellent", 200, tempHeight);
      }
      if( planets.get(0).temp < 80 && planets.get(0).temp >= 60 ) {
        textSize(32);
        fill(125, 255, 0);
        text("Temperature: Good", 200, tempHeight);
      }
      if( planets.get(0).temp < 60 && planets.get(0).temp >= 40 ) {
        textSize(32);
        fill(255, 255, 0);
        text("Temperature: Acceptable", 200, tempHeight);
      }
      if( planets.get(0).temp < 40 && planets.get(0).temp >= 20 ) {
        textSize(32);
        fill(255, 125, 0);
        text("Temperature: Poor", 200, tempHeight);
      }
      if( planets.get(0).temp < 20 ) {
        textSize(32);
        fill(255, 0, 0);
        text("Temperature: Agregious", 200, tempHeight);
      }
    pop();
    
    //Resources
    push();
      if( planets.get(0).resource >= 80 ) {
        textSize(32);
        fill(0, 255, 0);
        text("Resources: Excellent", 200, resoHeight);
      }
      if( planets.get(0).resource < 80 && planets.get(0).resource >= 60 ) {
        textSize(32);
        fill(125, 255, 0);
        text("Resources: Good", 200, resoHeight);
      }
      if( planets.get(0).resource < 60 && planets.get(0).resource >= 40 ) {
        textSize(32);
        fill(255, 255, 0);
        text("Resources: Acceptable", 200, resoHeight);
      }
      if( planets.get(0).resource < 40 && planets.get(0).resource >= 20 ) {
        textSize(32);
        fill(255, 125, 0);
        text("Resources: Poor", 200, resoHeight);
      }
      if( planets.get(0).resource < 20 ) {
        textSize(32);
        fill(255, 0, 0);
        text("Resources: Nonexistant", 200, resoHeight);
      }
    pop();
    
    //Other Features
    push();
      fill(255);
      textSize(40);
      text("Other Features", 1260, 75);
      textSize(30);
      //If there has been no probe
      if( planets.get(0).probed == false ) {
        if( planets.get(0).hasMoon == true ) {
          text("Has Moon", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).hasPlants == true ) {
          text("Has Plants", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).hasAnimals == true ) {
          text("Has Animals", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).hasCiv == true ) {
          text("Intellegent Activity", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).hasStorms == true ) {
          fill(255, 0, 0);
          text("Solar Storms", 1250, listTally + 150);
          listTally += 50;
        }
      }
      
      //If there has been a probe deployed
      if( planets.get(0).probed == true ) {
        if( planets.get(0).moonRich == true ) {
          fill(0, 255, 0);
          text("Resource-Rich Moon", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).moonDie == true ) {
          fill(255, 0, 0);
          text("Unstable Moon", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).moonNorm == true ) {
          fill(255);
          text("Regular Moon", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).plantsGood == true ) {
          fill(0, 255, 0);
          text("Helpful Plants", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).plantsBad == true ) {
          fill(255, 0, 0);
          text("Dangerous Plants", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).plantsNeutral == true ) {
          fill(255);
          text("Neutral Plants", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).animalsGood == true ) {
          fill(0, 255, 0);
          text("Helpful Wildlife", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).animalsBad == true ) {
          fill(255, 0, 0);
          text("Dangerous Wildlife", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).animalsNeutral == true ) {
          fill(255);
          text("Neutral Wildlife", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civDead == true ) {
          fill(255);
          text("Extinct Intellegent Life", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civTribe == true ) {
          fill(255);
          text("Cave Age Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civStone == true ) {
          fill(255);
          text("Stone Age Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civBronze == true ) {
          fill(255);
          text("Bronze Age Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civMedieval == true ) {
          fill(255);
          text("Medieval Age Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civIndustrial == true ) {
          fill(255);
          text("Industrial Age Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civModern == true ) {
          fill(255);
          text("Cold War Age Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civSpace == true ) {
          fill(255);
          text("Space Fairing Civilization", 1260, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).hasStorms == true ) {
          fill(255, 0, 0);
          text("Solar Storms", 1250, listTally + 150);
          listTally += 50;
        }
      }
    pop();
  }
  
  void interactHUD() {
    //New Planet Button
    push();
      fill(225, 225, 0);
      stroke(255);
      strokeWeight(3);
      circle(750, 800, 200);
      fill(0);
      textSize(30);
      text("New Planet", 750, 800);
    pop();
    
    //Probe Button
    push();
      fill(0, 155, 255);
      stroke(255);
      strokeWeight(3);
      circle(1050, 800, 200);
      fill(0);
      textSize(30);
      text("Launch Probe", 1050, 800);
      fill(255);
      text("Probes Left: " + probes, 1050, 950);
    pop();
    
    //Colonize button
    push();
      fill(255, 0, 0);
      stroke(255);
      strokeWeight(3);
      circle(450, 800, 200);
      fill(0);
      textSize(30);
      text("Colonize!", 450, 800);
    pop();
  }
  
  //Code for main menu
  void menu() {
    image(seedship, 750, 300);
    push();
      noFill();
      strokeWeight(7);
      stroke( varColorOne );
      rect(750, 450, 300, 100);
      stroke( varColorTwo );
      rect(750, 600, 300, 100);
      stroke( varColorThree );
      rect(750, 750, 300, 100);
      stroke( varColorFour );
      rect(750, 900, 300, 100);
      fill(255);
      noStroke();
      //textSize(48);
      textSize( varSizeOne );
      fill( varColorOne );
      text("New Game", 750, 465);
      //textSize(40);
      textSize( varSizeTwo );
      fill( varColorTwo );
      text("Load Game", 750, 615);
      //textSize(48);
      textSize( varSizeThree );
      fill( varColorThree );
      text("Old Games", 750, 765);
      textSize( varSizeFour );
      fill( varColorFour );
      text("Quit", 750, 915);
    pop();
  }
  
  //Text for the intro monoglogue
  void monologue() {
    push();
      textSize(32);
      text("When humanity first set its sights on the stars, they saw infinite possibilities—new worlds to conquer, \n boundless resources to exploit, and a future unshackled from the limitations of Earth. \n But in their obsession with the cosmos, they turned a blind eye to the slow death of their own home. \n Pollution choked the skies, oceans swallowed entire cities, and the very soil beneath their feet turned barren. \n By the time they reached a consensus on how to mend their broken world, the damage was irreversible. \n The privileged and the powerful secured their passage to the stars,  \n leaving behind a dying planet and the billions who could not afford salvation. \n The unlucky perished in fire and flood, their cries lost to the howling storms and the silence of abandoned streets. \n \n The lucky few, those with wealth or influence, ascended to the void, seeking refuge among the stars. \n You are the AI overseeing one of these last great arks—a vessel carrying the remnants of civilization, \n tasked with guiding them to a new home. The fate of humanity rests in your hands. \n You must navigate the perils of deep space, the limits of your own programming, \n and the desperate survivors who look to you for salvation. \n Will you be their savior, or will history repeat itself among the stars? \n \n Good luck and Godspeed.", 750, 100);
      textSize( varSizeOne );
      fill( varColorOne );
      text("Next", 750, 800);
    pop();
  }
  
  //Text for the dilemma screen
  void dilemmas() {
    push();
      textSize(32);
      String[] lines = problem.split("System.lineSeparator()");
      for (int i = 0; i < lines.length; i++) {
          text(lines[i], 750, 300 + (i * 40)); // 40 pixels between lines
      }
      textSize( varSizeOne );
      fill( varColorOne );
      text( answerOne, 750, 800);
      textSize( varSizeTwo );
      fill( varColorTwo );
      text( answerTwo, 750, 900);
    pop();
  }
}
