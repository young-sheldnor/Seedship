class GUI {
  void planetHUD() {
    int listTally = 0;
    
    //Status bars
    push(); //Atmosphere bar
      fill(120);
      rect(200, 200, 110, 310);
      fill(255-(planets.get(0).atmosphere * 2.5), (planets.get(0).atmosphere * 2.5), 0 );
      rect(200, 200, 100, (planets.get(0).atmosphere * 3));
      fill(0);
      textSize(20);
      text("Atmosphere", 200, 400);
    pop();
    push(); //Resource Bar
      fill(120);
      rect(400, 200, 110, 310);
      fill(255-(planets.get(0).resource * 2.5), (planets.get(0).resource * 2.5), 0 );
      rect(400, 200, 100, (planets.get(0).resource * 3));
      fill(0);
      textSize(20);
      text("Resource", 400, 400);
    pop();
    push(); //Gravity Bar
      fill(120);
      rect(600, 200, 110, 310);
      fill(255-(planets.get(0).gravity * 2.5), (planets.get(0).gravity * 2.5), 0 );
      rect(600, 200, 100, (planets.get(0).gravity * 3));
      fill(0);
      textSize(20);
      text("Gravity", 600, 400);
    pop();
    push(); //Water Bar
      fill(120);
      rect(800, 200, 110, 310);
      fill(255-(planets.get(0).water * 2.5), (planets.get(0).water * 2.5), 0 );
      rect(800, 200, 100, (planets.get(0).water * 3));
      fill(0);
      textSize(20);
      text("Water", 800, 400);
    pop();
    push(); //Temperature Bar
      fill(120);
      rect(1000, 200, 110, 310);
      fill(255-(planets.get(0).temp * 2.5), (planets.get(0).temp * 2.5), 0 );
      rect(1000, 200, 100, (planets.get(0).temp * 3));
      fill(0);
      textSize(20);
      text("Temperature", 1000, 400);
    pop();
    
    //Other Features
    push();
      fill(0);
      textSize(40);
      text("Other Features", 1225, 75);
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
          fill(0);
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
          fill(0);
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
          fill(0);
          text("Neutral Wildlife", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civDead == true ) {
          fill(0);
          text("Extinct Intellegent Life", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civTribe == true ) {
          fill(0);
          text("Cave Age Civilization", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civStone == true ) {
          fill(0);
          text("Stone Age Civilization", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civBronze == true ) {
          fill(0);
          text("Bronze Age Civilization", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civMedieval == true ) {
          fill(0);
          text("Medieval Age Civilization", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civIndustrial == true ) {
          fill(0);
          text("Industrial Age Civilization", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civModern == true ) {
          fill(0);
          text("Cold War Age Civilization", 1250, listTally + 150);
          listTally += 50;
        }
        if( planets.get(0).civSpace == true ) {
          fill(0);
          text("Space Fairing Civilization", 1250, listTally + 150);
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
      stroke(0);
      strokeWeight(3);
      circle(750, 800, 200);
      fill(0);
      textSize(30);
      text("New Planet", 750, 800);
    pop();
    
    //Probe Button
    push();
      fill(0, 155, 255);
      stroke(0);
      strokeWeight(3);
      circle(1050, 800, 200);
      fill(0);
      textSize(30);
      text("Launch Probe", 1050, 800);
      text("Probes Left: " + probes, 1050, 950);
    pop();
  }
}
