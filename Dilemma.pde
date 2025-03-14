class Dilemma {
  String [] dilemmas;
  String [] choicesOne, choicesTwo;
  
  //Loads the scenarios and choices folders.
  void loadScenarios()
  {
    try {
      //what am i doing
      dilemmas = loadStrings("scenarios.txt");
    }
    catch(Exception e) {
      println("SOMETHING WENT WRONG WHILE LOADING DILEMMAS");
    }
    try {
      choicesOne = loadStrings("choicesOne.txt");
      choicesTwo = loadStrings("choicesTwo.txt");
    }
    catch( Exception e ) {
      println("SOMETHING WENT WRONG WHILE LOADING CHOICES");
    }
  }
  
  public Dilemma() {
    loadScenarios();
    callDilemma();
  }
  
  void callDilemma() {
    int rdmDilemma = int(random(dilemmas.length ) );
    problem = dilemmas[rdmDilemma];
    answerOne = choicesOne[rdmDilemma];
    answerTwo = choicesTwo[rdmDilemma];
  }
}
