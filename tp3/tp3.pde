// https://youtu.be/ZIqqc_Rjb-I
PImage img;
int cols = 6;
int rows = 6;

void setup() {
  size(800, 400);
  img = loadImage("obra10.jpeg");
  imageMode(CORNER);
  rectMode(CORNER);
  noStroke();
}

void draw() {
  background(255);
  image(img, 0, 0, width / 2, height);

  float w = width / 2 / cols;
  float h = height / rows;

  translate(width / 2, 0);

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * w;
      float y = j * h;

      boolean estaSobreMouse = mouseX > width / 2 + x && mouseX < width / 2 + x + w &&
                               mouseY > y && mouseY < y + h;

      float offset = 0;
      if (estaSobreMouse && (i + j) % 2 == 0) {
        offset = 10;
      }

      pushMatrix();

      
      fill(255);
      rect(x + offset, y + offset, w, h);
      stroke(0);
      strokeWeight(1.2);
      noFill();
      rect(x + offset, y + offset, w, h);
      noStroke();

      if ((i + j) % 2 == 0) {
       
        fill(0);
        rect(x + offset, y + offset, w, h);
        
        
        float sw = w * 0.45;
        float sh = h * 0.45;
        float px = x + offset + w - sw * 0.95;
        float py = y + offset + h - sh * 0.95;

        fill(255);
        rect(px, py, sw, sh);

        
        stroke(0);
        strokeWeight(8);
        line(px + sw, py, px + sw, py + sh);
        line(px, py + sh, px + sw, py + sh);
        noStroke();
      }

      popMatrix();
    }
  }
}
