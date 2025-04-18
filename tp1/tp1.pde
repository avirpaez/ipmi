PImage fondo;

void setup() {
  size(800, 400);
  fondo = loadImage("sinrostroo.jpg");
  background(221, 238, 238);

  image(fondo, 0, 0, 400, 400);
  noStroke();

  fill(0);
  ellipse(600, 440, 160, 500);

  fill(0, 30);
  ellipse(600, 675, 100, 20);

  fill(255, 248, 231);
  ellipse(600, 270, 85, 120);

  fill(255);
  ellipse(576, 255, 20, 14);
  ellipse(624, 255, 20, 14);

  fill(0);
  ellipse(576, 257, 15, 10);
  ellipse(624, 257, 15, 10);

  stroke(0);
  strokeWeight(2);
  line(573, 264, 579, 264);
  line(621, 264, 627, 264);
  noStroke();

  fill(123, 77, 154); 
  triangle(570, 243, 582, 243, 576, 223);
  triangle(618, 243, 630, 243, 624, 223);

  triangle(572, 268, 584, 268, 578, 292);
  triangle(616, 268, 628, 268, 622, 292);

  fill(0);
  ellipse(600, 320, 25, 8);
  fill(123, 77, 154);
  ellipse(600, 320, 14, 2);

  stroke(0);
  strokeWeight(1);
  line(595, 327, 605, 327);
  noStroke();
}
