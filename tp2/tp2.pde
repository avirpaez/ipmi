PImage breakingBad1, breakingBad2, breakingBad3;
String texto1, texto2;
int estado = 0;
int contador = 0;

float yTexto = 480;
float velocidadY = 0.3;
float tamTexto = 15;
boolean creciendo = true;

int posXBoton = 500;
int posYBoton = 420;
int anchoBoton = 120;
int altoBoton = 40;
boolean mostrarBoton = false;

void setup() {
  size(640, 480);
  breakingBad1 = loadImage("breaking bad 1.jpeg");
  breakingBad2 = loadImage("breaking bad 2.jpeg");
  breakingBad3 = loadImage("breaking bad 3.jpeg");

  texto1 = "Un profesor de química con cáncer terminal comienza a fabricar metanfetamina con un exalumno para asegurar el futuro económico de su familia, pero su vida se va tornando cada vez más oscura y violenta.";
  texto2 = "Bryan Cranston como Walter White: un profesor de química que, tras ser diagnosticado con cáncer, se convierte en fabricante de metanfetamina.\n\nAaron Paul como Jesse Pinkman: exalumno de Walter y su socio en el negocio de las drogas.\n\nAnna Gunn como Skyler White: esposa de Walter, que poco a poco descubre en qué está metido su marido.";
}

void draw() {
  background(0);
  contador++;

  if (estado == 0) {
    image(breakingBad1, 0, 0, width, height);
  }

  if (estado == 1) {
    image(breakingBad2, 0, 0, width, height);

    yTexto -= velocidadY;
    if (yTexto < -30) yTexto = height;

    if (creciendo) {
      tamTexto += 0.1;
      if (tamTexto > 25) creciendo = false;
    } else {
      tamTexto -= 0.1;
      if (tamTexto < 15) creciendo = true;
    }

    fill(255);
    textSize(tamTexto);
    text(texto1, 20, yTexto, width - 40, height);
  }

  if (estado == 2) {
    image(breakingBad3, 0, 0, width, height);

    if (creciendo) {
      tamTexto += 0.2;
      if (tamTexto > 28) creciendo = false;
    } else {
      tamTexto -= 0.2;
      if (tamTexto < 16) creciendo = true;
    }

    fill(255);
    textSize(tamTexto);
    text(texto2, 20, 20, width - 40, height);
  }

  if (contador >= 300) { 
    contador = 0;
    if (estado < 2) {
      estado++;
      yTexto = height;
      tamTexto = 15;
      creciendo = true;
    } else {
      mostrarBoton = true;
    }
  }

  if (mostrarBoton) {
    fill(255);
    rect(posXBoton, posYBoton, anchoBoton, altoBoton);
    fill(0);
    textSize(18);
    text("Reiniciar", posXBoton + 10, posYBoton + 30);
  }
}

void mousePressed() {
  if (mostrarBoton) {
    if (mouseX > posXBoton && mouseX < posXBoton + anchoBoton &&
        mouseY > posYBoton && mouseY < posYBoton + altoBoton) {
      estado = 0;
      contador = 0;
      mostrarBoton = false;
      yTexto = height;
      tamTexto = 15;
      creciendo = true;
    }
  }
}
