String [] pilines;
String pidigits;
long numdigits;
String bday = "02/27/2007";
String us [];
String uk [];
void setup() {
  size(200, 200);
  noLoop();
  pilines = loadStrings("pi-million.txt");
  MyPI.setPI(pilines[0]);
  println(pilines[0].length());
  pidigits = pilines[0].substring(0, 1) + pilines[0].substring(2);
  numdigits = pidigits.length();
  println(numdigits);
  us = MyPI.getSubs(bday);
  for (String q : us) {
    println(q + " " + MyPI.findinPI(q));
  }
  String bday_uk = bday.substring(3, 5) + "/" + bday.substring(0, 3)
    + "/" + bday.substring(6);
  uk = MyPI.getSubs(bday_uk);
  for (String q : uk) {
    println(q + " " + MyPI.findinPI(q));
  }
}

void draw() {
}
