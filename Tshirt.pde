class Tshirt{ //Laver klassen t-shirt
  
  private String tshirtColor; //Erklærer klassens attributter.
  
  private String size;
  
  private int priceInDKK;
  
  
  Tshirt(String tshirtColor, String size, int priceInDKK){ //Laver klassens konstruktor og initaliserer attributterne.
    this.tshirtColor = tshirtColor;
    this.size = size;
    this.priceInDKK = priceInDKK;
  }
  String getTShirtColor(){ //Laver getter metoder til t-shirtens farve, størrelse og pris.
    return tshirtColor;
  }
  String getSize(){
    return size;
  }
  int getPriceInDKK(){
    return priceInDKK;
  }
  void printTShirt(){ //Metoden printer t-shirtens data ud og bliver anvendt i metoden printStockData.
    println("T-shirt color: " + tshirtColor + ", Size: " + size + ", Price in DKK: " + priceInDKK);
    
  }
}
