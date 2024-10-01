void setup(){
  
  Stock stock = new Stock(); //Laver et objekt af klassen stock, så jeg kan kalde mine metoder på objektet og tilføje objekter til min arraylist tshirtList.
  stock.tshirtList.add(new Tshirt("Black", "Small",110));
  stock.tshirtList.add(new Tshirt("Black","Small",110));
  stock.tshirtList.add(new Tshirt("Black","Small",110));
  
  stock.tshirtList.add(new Tshirt("Black","Medium",110));
  stock.tshirtList.add(new Tshirt("Black","Medium",110));
  
  stock.tshirtList.add(new Tshirt("Black","Large",110));
  stock.tshirtList.add(new Tshirt("Black","Large",110));
  stock.tshirtList.add(new Tshirt("Black","Large",110));
  stock.tshirtList.add(new Tshirt("Black","Large",110));
  stock.tshirtList.add(new Tshirt("Black","Large",110));
  
  stock.tshirtList.add(new Tshirt("White","Small",125));
  
  stock.tshirtList.add(new Tshirt("White","Medium",125));
  stock.tshirtList.add(new Tshirt("White","Medium",125));
  stock.tshirtList.add(new Tshirt("White","Medium",125));
  stock.tshirtList.add(new Tshirt("White","Medium",125));
  
  stock.tshirtList.add(new Tshirt("White","Large",125));
  stock.tshirtList.add(new Tshirt("White","Large",125));
  stock.tshirtList.add(new Tshirt("White","Large",125));
  
  
  stock.printStockData2(); //Kalder nogle af metoderne, så t-shirts bliver købt og lager samt omsætning bliver skrevet ud.
  println();
  stock.buyTshirt("Black","Small");
  stock.buyTshirt("White","Small");
  stock.buyTshirt("White","Small");
  stock.buyTshirt("Black","Large");
  stock.printStockData2();
  println();
  stock.printTurnOver();
  stock.printStockData3();
   
}
