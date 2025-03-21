class Planet {
  //Creates the necesary traits on planets
  int atmosphere, water, gravity, temp, resource;
  
  //Creates the unnecesary traits on planets
  /*
  * hasMoon = planet has moon, further moon traits affected by moonRich for resources, moonDie for dying moon, and moonNorm for normal moon
  * hasStorms = solar storms, affects if probes are effective or not. Negative effect on technology stat.
  * hasPlants = determines if planet has plants. Affected by plantsGood, plantsBad, and plantsNeutral to determine end game result.
  * hasAnimals = if planet has animals. Affected by animalsGood, animalsBad, and animalsNeutral to determine end game point result.
  * hasCiv = if planet has civilization. Affectd by civDead, civTribe, civStone, civBronze, civMedieval, civIndustrial, civModern, and civSpace to determine state of the civilization. */
  
  boolean hasMoon, hasStorms, hasPlants, hasAnimals, hasCiv;
  boolean moonRich, moonDie, moonNorm;
  boolean plantsGood, plantsBad, plantsNeutral;
  boolean animalsGood, animalsBad, animalsNeutral;
  boolean civDead, civTribe, civStone, civBronze, civMedieval, civIndustrial, civModern, civSpace;
  
  //See if planet has been probed
  boolean probed;
  
  public Planet() {
    planetSetup();
  }
  
  void planetSetup() {
    //Series of random values for the unnecesary traits
    int rdmOne, rdmTwo, rdmThree, rdmFour, rdmFive;
    rdmOne = int(random(1, 6) );
    rdmTwo = int(random(1, 11) );
    rdmThree = int(random(1, 3) );
    rdmFour = int(random(1, 3) );
    rdmFive = int(random(1, 8) );
    
    //Gives random values for the necesary traits if no upgrades
    if( ship[0].upgradeAtmosphere == 0 )
      atmosphere = int(random(100) );
    if( ship[0].upgradeResource == 0 )
      resource = int(random(100) );
    if( ship[0].upgradeGravity == 0 )
      gravity = int(random(100) );
    if( ship[0].upgradeWater == 0 )
      water = int(random(100) );
    if( ship[0].upgradeTemp == 0 )
      temp = int(random(100) );
      
    //Gives random values for the necesary traits if 1 upgrade
    if( ship[0].upgradeAtmosphere == 1 )
      atmosphere = int(max(random(100), random(100) ) );
    if( ship[0].upgradeResource == 1 )
      resource = int(max(random(100), random(100) ) );
    if( ship[0].upgradeGravity == 1 )
      gravity = int(max(random(100), random(100) ) );
    if( ship[0].upgradeWater == 1 )
      water = int(max(random(100), random(100) ) );
    if( ship[0].upgradeTemp == 1 )
      temp = int(max(random(100), random(100) ) );
      
    //Gives random values for the necesary traits if max (2) upgrades
    if( ship[0].upgradeAtmosphere == 2 )
      atmosphere = int(max( random(100), max(random(100), random(100) ) ) );
    if( ship[0].upgradeResource == 2 )
      resource = int(max( random(100), max(random(100), random(100) ) ) );
    if( ship[0].upgradeGravity == 2 )
      gravity = int(max( random(100), max(random(100), random(100) ) ) );
    if( ship[0].upgradeWater == 2 )
      water = int(max( random(100), max(random(100), random(100) ) ) );
    if( ship[0].upgradeTemp == 2 )
      temp = int(max( random(100), max(random(100), random(100) ) ) );
    
    //Adds one to the running tally of what planets have been explored
    journeyLength ++;
    
    //Gives random values for the unnecesary traits
    if( rdmOne == 1 )
      hasMoon = true;
    if( rdmTwo == 1 )
      hasStorms = true;
    if( rdmThree == 1 )
      hasPlants = true;
    if( rdmFour == 1 )
      hasAnimals = true;
    if( rdmFive == 1 )
      hasCiv = true;
    
    //Gives random state to moon if there is a moon
    if( hasMoon == true ) {
      int moonState = int(random(1, 4) );
      if( moonState == 1)
        moonRich = true;
      else if( moonState == 2)
        moonDie = true;
      else
        moonNorm = true;
    }
    
    //Gives random state to plants if there are plants
    if( hasPlants == true ) {
      int plantState = int(random(1, 4) );
      if( plantState == 1)
        plantsGood = true;
      if( plantState == 2)
        plantsBad = true;
      else if( plantState > 2 )
        plantsNeutral = true;
    }
    
    //Gives random state to animals if there are animals
    if( hasAnimals == true ) {
      int animalState = int(random(1, 4) );
      if( animalState == 1 )
        animalsGood = true;
      if( animalState == 2 )
        animalsBad = true;
      else if( animalState > 2 )
        animalsNeutral = true;
    }
    
    if( hasCiv == true ) {
      int dead = int(random(1,3) );
      if( dead == 1 )
        civDead = true;
      else {
        int civState = int(random(1, 18) );
        if( civState == 1 )
          civSpace = true;
        else if( civState == 2 || civState == 3 )
          civModern = true;
        else if( civState == 4 || civState == 5 )
          civIndustrial = true;
        else if( civState == 6 || civState == 7 || civState == 8 )
          civMedieval = true;
        else if( civState == 9 || civState == 10 || civState == 11 )
          civBronze = true;
        else if( civState == 12 || civState == 13 || civState == 14 )
          civStone = true;
        else
          civTribe = true;
      }
    }
  }
}
