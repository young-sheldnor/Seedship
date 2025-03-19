class Ship {
  //Variables for the ship
  int scannerAtmosphere = 100, scannerGravity = 100, scannerWater = 100, scannerResource = 100, scannerTemp = 100; //Value to see the condition of the different scanners
  int upgradeAtmosphere, upgradeGravity, upgradeWater, upgradeResource, upgradeTemp = 0; //Value to see if and how much scanners are upgraded
  int construct = 100;
  int colonists = 1000; //Number of colonists
  int science = 100, culture = 100; //Value for condition of databanks
  
  int finalAtmosphere, finalGravity, finalWater, finalResource, finalTemp; //Final values for all necesary values
  int finalMoon, finalPlants, finalAnimals, finalCiv, finalStorm; //Final values for all unnecesary values
  
  //Score values for the different traits
  int moonScore;
  int plantScore;
  int animalScore;
  int civScore;
  
  void scoreCount() {
    //Creates score values for moons
    if( planets.get(0).moonRich)
      moonScore = 100;
    else if( planets.get(0).moonDie )
      moonScore = -400;
    else if( planets.get(0).moonNorm )
      moonScore = 0;
    else
      moonScore = 0;
    
    //Creates score values for plants and animals
    if( planets.get(0).plantsGood)
      plantScore = 100;
    else if( planets.get(0).plantsBad )
      plantScore = -100;
    else if( planets.get(0).plantsNeutral )
      plantScore = 0;
    else
      plantScore = 0;
    if( planets.get(0).animalsGood)
      animalScore = 100;
    else if( planets.get(0).animalsBad )
      animalScore = -100;
    else if( planets.get(0).animalsNeutral )
      animalScore = 0;
    else
      animalScore = 0;
      
    //Creates Score value for civilizations
    if( planets.get(0).civDead ) 
      civScore = 50;
    else if( planets.get(0).civTribe ) 
      civScore = 100;
    else if( planets.get(0).civStone ) 
      civScore = 200;
    else if( planets.get(0).civBronze ) 
      civScore = 400;
    else if( planets.get(0).civMedieval ) 
      civScore = 500;
    else if( planets.get(0).civIndustrial ) 
      civScore = 700;
    else if( planets.get(0).civModern ) 
      civScore = 800;
    else if( planets.get(0).civSpace ) 
      civScore = 1000;
    else
      civScore = 0;
    score = (finalAtmosphere + finalGravity + finalWater + finalResource + finalTemp + science + culture)*2 + moonScore + plantScore + animalScore + colonists + civScore;
  }
}
