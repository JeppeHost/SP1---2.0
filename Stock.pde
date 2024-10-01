class Stock{
  
  ArrayList<Tshirt> tshirtList = new ArrayList<Tshirt>(); //Laver en arraylist af objekter af klassen t-shirt, hvor alle lagerets t-shirts skal ligge.
  
  int turnover = 0; //Initialiserer turnover, som jeg bruger i metoden buyTshirt længere nede.
  
  void printStockData(){ //Denne metode printer hver t-shirt på lageret ud en efter en.
    
    println("Current stock: ");
    for(int i = 0; i < tshirtList.size();i++){
      tshirtList.get(i).printTShirt();
    }  
  }
  
  void printStockData3(){ //Metoden printer lageret ud, hvor antallet af hvert produkt bliver angivet, så det bliver mere overskueligt. Her har jeg brugt switch.
    int smallBlack = 0;   //Initialiserer variable, som vi bruger i loopet og som bliver talt op med en, hver gang vi finder den rigtige t-shirt på lageret.
    int mediumBlack = 0;
    int largeBlack = 0;
    int smallWhite = 0;
    int mediumWhite = 0;
    int largeWhite = 0;
    
    for(int i = 0; i < tshirtList.size();i++){ //Laver et for-loop og erklærer en variabel af klassen t-shirt, som jeg bruger til at tilgå hver t-shirt i listen.
      Tshirt t = tshirtList.get(i);
      switch(t.getSize()){
        case "Small": 
          if(t.getTShirtColor() == "Black"){
            smallBlack++;
          } else if(t.getTShirtColor() == "White"){
            smallWhite++;
          }
          break;
          
        case "Medium": 
          if(t.getTShirtColor() == "Black"){
            mediumBlack++;
          } else if(t.getTShirtColor() == "White"){
            mediumWhite++;
          }
          break;
          
        case "Large": 
          if(t.getTShirtColor() == "Black"){
            largeBlack++;
          } else if(t.getTShirtColor() == "White"){
            largeWhite++;
          }
          break;
          
      }
    }
    println("Current stock:");
    println();
    println("Number of t-shirts black/small in stock: " + smallBlack);
    println("Number of t-shirts black/medium in stock: " + mediumBlack);
    println("Number of t-shirts black/large in stock: " + largeBlack);
    println("Number of t-shirts white/small in stock: " + smallWhite);
    println("Number of t-shirts white/medium in stock: " + mediumWhite);
    println("Number of t-shirts white/large in stock: " + largeWhite);
    
      
  }
  
  void printStockData2(){ //Metoden printer lageret ud på nøjagtig samme måde som printStockData3, dog har jeg her gjort brug af if-statements.
    int smallBlack = 0;   
    int mediumBlack = 0;
    int largeBlack = 0;
    int smallWhite = 0;
    int mediumWhite = 0;
    int largeWhite = 0;
    
    for(int i = 0; i < tshirtList.size();i++){
      Tshirt t = tshirtList.get(i);
      
      if(t.getTShirtColor() == "Black" && t.getSize() == "Small"){
        smallBlack++;
      } else if(t.getTShirtColor() == "Black" && t.getSize() == "Medium"){
        mediumBlack++;
      } else if(t.getTShirtColor() == "Black" && t.getSize() == "Large"){
        largeBlack++;
      } else if(t.getTShirtColor() == "White" && t.getSize() == "Small"){
        smallWhite++;
      } else if(t.getTShirtColor() == "White" && t.getSize() == "Medium"){
        mediumWhite++;
      } else if(t.getTShirtColor() == "White" && t.getSize() == "Large"){
        largeWhite++;
      }
     
      
      
    }
    println("Current stock:"); //Printer lagerets status ud med antal af hver t-shirt på lager.
    println();
    println("Number of t-shirts black/small in stock: " + smallBlack);
    println("Number of t-shirts black/medium in stock: " + mediumBlack);
    println("Number of t-shirts black/large in stock: " + largeBlack);
    println("Number of t-shirts white/small in stock: " + smallWhite);
    println("Number of t-shirts white/medium in stock: " + mediumWhite);
    println("Number of t-shirts white/large in stock: " + largeWhite);
    
  }

  void printTurnOver(){ //Metoden printer butikkens omsætning ud ved at bruge variablen turnover, som jeg bruger i metoden nedenfor.
    println("Current revenue: We have sold for " + turnover + " DKK");
    
    
  }
  
  void buyTshirt(String tshirtColor, String size){ //Metoden lader brugeren købe en t-shirt, når man kalder den fra setup med de givne parametre. 
    boolean tshirtFound = false;
    for(int i = 0; i < tshirtList.size();i++){
      Tshirt t = tshirtList.get(i);
      if(t.getTShirtColor() == tshirtColor && t.getSize() == size){
        tshirtFound = true;
        tshirtList.remove(t);
        println("You just bought a t-shirt! Color: "  + t.getTShirtColor() + ", Size: " + t.getSize());
        turnover += t.getPriceInDKK();
        break;
      }
    }  
    if(!tshirtFound){
      println("This t-shirt is no longer in stock.");
    }
  }
}
    
 
