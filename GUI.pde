class GUI {
  void planetHUD() {
    int listTally = 0;
    
    //Status bars
    push(); //Atmosphere bar
      fill(120);
      rect(200, 200, 110, 310);
      fill(255-(planets.get(0).atmosphere * 2.5), (planets.get(0).atmosphere * 2.5), 0 );
      rect(200, 200, 100, (planets.get(0).atmosphere * 3));
      textSize(20);
      text("Atmosphere", 200, 400);
    pop();
    push(); //Resource Bar
      fill(120);
      rect(400, 200, 110, 310);
      fill(255-(planets.get(0).resource * 2.5), (planets.get(0).resource * 2.5), 0 );
      rect(400, 200, 100, (planets.get(0).resource * 3));
      textSize(20);
      text("Resource", 400, 400);
    pop();
    push(); //Gravity Bar
      fill(120);
      rect(600, 200, 110, 310);
      fill(255-(planets.get(0).gravity * 2.5), (planets.get(0).gravity * 2.5), 0 );
      rect(600, 200, 100, (planets.get(0).gravity * 3));
      textSize(20);
      text("Gravity", 600, 400);
    pop();
    push(); //Water Bar
      fill(120);
      rect(800, 200, 110, 310);
      fill(255-(planets.get(0).water * 2.5), (planets.get(0).water * 2.5), 0 );
      rect(800, 200, 100, (planets.get(0).water * 3));
      textSize(20);
      text("Water", 800, 400);
    pop();
    push(); //Temperature Bar
      fill(120);
      rect(1000, 200, 110, 310);
      fill(255-(planets.get(0).temp * 2.5), (planets.get(0).temp * 2.5), 0 );
      rect(1000, 200, 100, (planets.get(0).temp * 3));
      textSize(20);
      text("Temperature", 1000, 400);
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
  }
  
  void menu() {
    image(seedship, 750, 300);
    push();
      noFill();
      strokeWeight(7);
      stroke(255);
      rect(750, 450, 300, 100);
      rect(750, 600, 300, 100);
      rect(750, 750, 300, 100);
      rect(750, 900, 300, 100);
      fill(255);
      noStroke();
      textSize(48);
      text("New Game", 750, 465);
      textSize(40);
      text("Load Game", 750, 615);
      textSize(48);
      text("Old Games", 750, 765);
      text("Quit", 750, 915);
    pop();
  }
  
  void monologue() {
    push();
      textSize(32);
      text("When humanity first set its sights on the stars, they saw infinite possibilities—new worlds to conquer, \n boundless resources to exploit, and a future unshackled from the limitations of Earth. \n But in their obsession with the cosmos, they turned a blind eye to the slow death of their own home. \n Pollution choked the skies, oceans swallowed entire cities, and the very soil beneath their feet turned barren. \n By the time they reached a consensus on how to mend their broken world, the damage was irreversible. \n The privileged and the powerful secured their passage to the stars,  \n leaving behind a dying planet and the billions who could not afford salvation. \n The unlucky perished in fire and flood, their cries lost to the howling storms and the silence of abandoned streets. \n \n The lucky few, those with wealth or influence, ascended to the void, seeking refuge among the stars. \n You are the AI overseeing one of these last great arks—a vessel carrying the remnants of civilization, \n tasked with guiding them to a new home. The fate of humanity rests in your hands. \n You must navigate the perils of deep space, the limits of your own programming, \n and the desperate survivors who look to you for salvation. \n Will you be their savior, or will history repeat itself among the stars? \n \n Good luck and Godspeed.", 750, 100);
      textSize(48);
      text("Next", 750, 800);
    pop();
  }
}
