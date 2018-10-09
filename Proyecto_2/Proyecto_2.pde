//proyecto 2

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

import processing.sound.*;

class Pantalla {
  int n;
  int dt;
  Body b;

  void inicio() {
    dt+=0.01;
    noStroke();

    for (int i= 0; i<width; i+=10) {
      for (int j = 0; j<height; j+=10) {

        fill(noise(i*0.01+dt*1, j*0.01+1, dt)*255, noise(i*0.0+dt*2, j*0.01*2, dt)*255);
        noStroke();
        rect(i, j, i, j);
      }
    }

    fill(14, 41, 75);
    textSize(60);
    textAlign(CENTER);
    text("Aplastamiento de las gotas", 540, 300);

    textAlign(CENTER);
    textSize(30);
    text("Por Julio Cortazar", 540, 380);

    fill(42, 46, 75);
    textSize(24);
    text("Presiona q,w,e,r,a,s,d,f en orden para tener una mejor experiencia del poema", 540, 700);
  }
  void pantalla1() {

    fill(34, 113, 179);
    textSize(28);
    pushMatrix();
    text("Y", 190, 100);
    text("o", 190, 130);
    text("n", 190, 170);
    text("o", 190, 200);
    text("s", 190, 240);
    text("e", 190, 270);
    //

    text("m", 350, 120);
    text("i", 350, 150);
    text("r", 350, 175);
    text("a", 350, 200);
    // 

    text("e", 530, 110);
    text("s", 530, 135);
    text("t", 530, 175);
    text("e", 530, 195);
    text("r", 530, 215);
    text("r", 530, 235);
    text("i", 530, 260);
    text("b", 530, 280);
    text("l", 530, 310);
    text("e", 530, 330);
    text("c", 530, 370);
    text("o", 530, 390);
    text("m", 530, 410);
    text("o", 530, 430);
    text("l", 530, 470);
    text("l", 530, 500);
    text("u", 530, 520);
    text("e", 530, 540);
    text("v", 530, 560);
    text("e", 530, 580);
    //

    text("L", 730, 100);
    text("l", 730, 130);
    text("u", 730, 150);
    text("e", 730, 170);
    text("v", 730, 190);
    text("e", 730, 210);
    text("t", 730, 250);
    text("o", 730, 270);
    text("d", 730, 290);
    text("o", 730, 310);
    text("e", 730, 340);
    text("l", 730, 370);
    text("t", 730, 410);
    text("i", 730, 440);
    text("e", 730, 460);
    text("m", 730, 480);
    text("p", 730, 500);
    text("o", 730, 520);

    text("a", 900, 150);
    text("f", 900, 175);
    text("u", 900, 190);
    text("e", 900, 210);
    text("r", 900, 230);
    text("a", 900, 250);
    text("t", 900, 290);
    text("u", 900, 310);
    text("p", 900, 330);
    text("i", 900, 350);
    text("d", 900, 370);
    text("o", 900, 390);
    text("y", 900, 430);
    text("g", 900, 470);
    text("r", 900, 495);
    text("i", 900, 520);
    text("s", 900, 540);
    popMatrix();

    noFill();
    stroke(180);
    strokeWeight(2);
    arc(51, 50, 80, 80, 0, PI+QUARTER_PI, OPEN);
    arc(140, 50, 97, 97, 0, PI, OPEN);
    arc(217, 30, 65, 65, 0, PI, OPEN);
    arc(250, 10, 60, 60, 0, HALF_PI, OPEN);
    arc(0, 1, 60, 60, 0, HALF_PI, OPEN);

    arc(300, 40, 97, 97, 0, PI, OPEN);
    arc(380, 25, 65, 65, 0, PI, OPEN);
    arc(411, 2, 60, 60, 0, HALF_PI, OPEN);

    arc(530, 25, 70, 70, PI, PI+QUARTER_PI);
    arc(618, 25, 50, 50, 0, PI, OPEN);
    arc(544, 25, 97, 97, 0, PI, OPEN);
    arc(695, 25, 100, 100, 0, PI, OPEN);
    arc(745, 3, 60, 60, 0, HALF_PI, OPEN);

    arc(830, 25, 70, 70, PI, PI+QUARTER_PI);
    arc(844, 25, 97, 97, 0, PI, OPEN);
    arc(918, 25, 50, 50, 0, PI, OPEN);
    arc(950, 46, 30, 30, 0, PI, OPEN);
    arc(1006, 40, 80, 80, 0, PI, OPEN);
    arc(1040, 25, 80, 80, 0, HALF_PI, OPEN);
  }
  void pantalla2() {
    fill(27, 85, 131);
    textSize(60);
    pushMatrix();
    text("A q u i   c o n t r a   e l   b a l c o n", 540, 200);

    textSize(40);
    text("c", 120, 240);
    text("o", 120, 280);
    text("n", 120, 320);
    text("g", 120, 380);
    text("o", 120, 420);
    text("t", 120, 460);
    text("e", 120, 490);
    text("r", 120, 520);
    text("o", 120, 550);
    text("n", 120, 580);
    text("e", 120, 610);
    text("s", 120, 640);

    //
    textSize(20);
    text("c", 350, 240);
    text("u", 350, 273.3);
    text("a", 350, 306.3);
    text("j", 350, 339.3);
    text("a", 350, 372.3);
    text("d", 350, 405.3);
    text("o", 350, 430.3);
    text("s", 350, 460.3);
    text("y", 350, 495.3);
    text("d", 350, 537.3);
    text("u", 350, 570.3);
    text("r", 350, 595.3);
    text("o", 350, 615.3);
    text("s", 350, 640);
    //
    textSize(24);
    text("q", 685, 240);
    text("u", 685, 270);
    text("e", 685, 290);
    text("h", 685, 350);
    text("a", 685, 380);
    text("c", 685, 410);
    text("e", 685, 440);
    text("n", 685, 460);
    text("¡", 685, 510);
    text("p", 685, 530);
    text("l", 685, 565);
    text("a", 685, 585);
    text("f", 685, 615);
    text("!", 685, 640);

    //
    textSize(35);
    text("y", 960, 240);
    text("s", 960, 300);
    text("e", 960, 330);
    text("a", 960, 390);
    text("p", 960, 430);
    text("l", 960, 480);
    text("a", 960, 510);
    text("s", 960, 540);
    text("t", 960, 575);
    text("a", 960, 610);
    text("n", 960, 640);
    popMatrix();

    boundaries.add(new Boundary(540, 200, 600, 5, 0));
  }

  void pantalla3() {
    fill(34, 113, 179);
    textSize(35);
    pushMatrix();
    text("Como bofetadas", 200, 200);
    textSize(45);
    text("Uno detras de otro", 800, 300);
    textSize(70);
    text("¡Q U E  H A S T I O!", 400, 600);
    popMatrix();

    fill(0);
    stroke(0);
    strokeWeight(4);
    line(300, 210, 50, 230);
    line(700, 615, 50, 600);
    line(1000, 310, 50, 320);


    boundaries.add(new Boundary(230, 210, 100, 5, -50));
    boundaries.add(new Boundary(700, 310, 100, 5, 0));
    boundaries.add(new Boundary(300, 600, 100, 5, 50));
  }

  void pantalla4() {
    fill(27, 85, 131);
    textSize(24);
    pushMatrix();
    text("Ahora aparece una gotita", 800, 200);

    //
    text("E", 940, 225);
    text("n", 940, 245);
    text("l", 940, 275);
    text("o", 940, 295);
    text("a", 940, 325);
    text("l ", 943, 345);
    text("t", 940, 365);
    text("o", 940, 385);
    text("d", 940, 415);
    text("e", 940, 435);
    text("l", 940, 465);
    text("a", 940, 485);
    text("v", 940, 515);
    text("e", 940, 535);
    text("n", 940, 555);
    text("t", 940, 575);
    text("a", 940, 595);
    text("n", 940, 615);
    text("a", 940, 635);

    //
    fill(34, 113, 179); 
    textSize(35);
    text("S e   q u e d a", 790, 635);

    textSize(18);
    text("T", 660, 225);
    text("e", 660, 240);
    text("m", 660, 255);
    text("b", 660, 270);
    text("l", 660, 285);
    text("e", 660, 300);
    text("q", 660, 315);
    text("u", 660, 330);
    text("e", 660, 345);
    text("a", 660, 360);
    text("n", 660, 375);
    text("d", 660, 390);
    text("o", 660, 405);
    text("c", 660, 430);
    text("o", 660, 445);
    text("n", 660, 460);
    text("t", 660, 475);
    text("r", 660, 490);
    text("a", 660, 505);
    text("e", 660, 530);
    text("l", 660, 545);
    text("c", 660, 575);
    text("i", 660, 590);
    text("e", 660, 605);
    text("l", 660, 620);
    text("o", 660, 635);

    //
    textSize(28);
    text("Q u e  l a  t r i z a", 800, 400);

    textSize(22);
    text("En mil brillos apagados", 800, 430);
    popMatrix();

    stroke(130);
    strokeWeight(3.5);
    noFill();
    rect(200, 300, 200, 200);

    stroke(170);
    bezier(310, 300, 250, 250, 280, 280, 210, 205);
    bezier(290, 200, 250, 340, 325, 325, 210, 205);
    ellipse(205, 200, 30, 30);
    ellipse(290, 190, 30, 30);

    ellipse(190, 240, 10, 10);
    ellipse(220, 240, 10, 10);
    ellipse(320, 210, 10, 10);
    ellipse(270, 250, 10, 10);
    ellipse(300, 160, 10, 10);
    ellipse(230, 160, 10, 10);
    ellipse(180, 170, 10, 10);
    ellipse(160, 200, 10, 10);
    ellipse(165, 235, 10, 10);
    ellipse(210, 175, 10, 10);
    ellipse(200, 150, 10, 10);
    ellipse(180, 210, 10, 10);
    ellipse(300, 220, 10, 10);
    ellipse(320, 190, 10, 10);
    ellipse(330, 160, 10, 10);
    ellipse(340, 180, 10, 10);
    ellipse(265, 200, 10, 10);
    ellipse(275, 230, 10, 10);
    ellipse(260, 150, 10, 10);
    ellipse(310, 145, 10, 10);
    ellipse(250, 240, 10, 10);
    ellipse(235, 220, 10, 10);
    ellipse(240, 200, 10, 10);
    ellipse(245, 180, 10, 10);
    ellipse(270, 165, 10, 10);
    ellipse(280, 140, 10, 10);


    fill(0);
    noStroke();
    rect(100, 500, 400, 5);

    boundaries.add(new Boundary(100, 500, 400, 5, 0));
  }
  void pantalla5() {
    fill(34, 113, 179); 
    textSize(24);
    pushMatrix();
    text("Va", 540, 100);

    textSize(28);
    text("creciendo", 540, 130);

    textSize(30);
    text("y se tambalea", 540, 160);

    textSize(34);
    text("ya   va   a   caer ", 540, 190);

    textSize(36);
    text("y    no    se     cae", 540, 220);

    textSize(35);
    text("t", 375, 250);
    text("o", 380, 280);
    text("d", 385, 310);
    text("a", 400, 340);
    text("v", 420, 370);
    text("i", 440, 390);
    text("a", 460, 400);
    text("n", 500, 412);
    text("o", 530, 414);
    text("s", 570, 414);
    text("e", 590, 412);
    text("c", 620, 400);
    text("a", 640, 390);
    text("e", 660, 370);
    text(".", 680, 340);
    text(".", 690, 310);
    text(".", 695, 280);
    text(".", 695, 250);
  }
  void pantalla6() {

    fill(27, 85, 131);
    textSize(24);
    pushMatrix();
    text("Y", 540, 90);
    text("E", 490, 120);
    text("S", 520, 120);
    text("T", 555, 120);
    text("A", 585, 121);
    text("P", 460, 150);
    text("R", 490, 150);
    text("E", 510, 150);
    text("N", 530, 150);
    text("D", 550, 150);
    text("I", 570, 150);
    text("D", 590, 150);
    text("A", 610, 150);
    text("C", 430, 180);
    text("O", 540, 180);
    text("N", 635, 180);
    text("L", 400, 210);
    text("A", 540, 210);
    text("S", 660, 210);
    text("U", 370, 240);
    text("Ñ", 470, 240);
    text("A", 600, 240);
    text("S", 685, 240);

    //

    text("N", 340, 270);
    text("O", 380, 270);
    text("Q", 430, 270);
    text("U", 490, 270);
    text("I", 540, 270);
    text("E", 600, 270);
    text("R", 660, 270);
    text("E", 710, 270);
    text("C", 310, 300);
    text("A", 380, 300);
    text("E", 450, 300);
    text("R", 540, 300);
    text("S", 640, 300);
    text("E", 735, 300);
    text("Y", 280, 330);
    text("S", 380, 330);
    text("E", 430, 330);
    text("L", 590, 330);
    text("A", 630, 330);
    text("V", 720, 330);
    text("E", 760, 330);

    //
    textSize(18);
    text("Q", 250, 345);
    text("U", 290, 345);
    text("E", 330, 345);
    text("S", 440, 345);
    text("E", 480, 345);
    text("A", 590, 345);
    text("G", 620, 345);
    text("A", 650, 345);
    text("R", 700, 345);
    text("R", 740, 345);
    text("A", 785, 345);
    text("C", 220, 370);
    text("O", 260, 370);
    text("N", 300, 370);
    text("L", 360, 370);
    text("O", 400, 370);
    text("S", 450, 370);
    text("D", 520, 370);
    text("I", 560, 370);
    text("E", 600, 370);
    text("N", 660, 370);
    text("T", 700, 370);
    text("E", 760, 370);
    text("S", 810, 370);


    //
    textSize(18);
    text("M", 190, 390);
    text("I", 240, 390);
    text("E", 290, 390);
    text("N", 340, 390);
    text("T", 390, 390);
    text("R", 440, 390);
    text("A", 490, 390);
    text("S", 540, 390);
    text("L", 590, 390);
    text("E", 640, 390);
    text("C", 690, 390);
    text("R", 740, 390);
    text("E", 780, 390);
    text("C", 820, 390);
    text("E", 850, 390);
    text("L", 190, 410);
    text("A", 210, 440);
    text("B", 250, 490);
    text("A", 280, 510);
    text("R", 310, 540);
    text("R", 340, 560);
    text("I", 370, 580);
    text("G", 400, 590);
    text("A", 430, 600);
    text(".", 470, 600);
    text(".", 500, 600);
    text(".", 530, 600);
    text(".", 560, 600);
    text(".", 590, 600);
    text(".", 620, 600);
    text(".", 650, 600);
    text(".", 680, 590);
    text(".", 710, 580);
    text(".", 740, 560);
    text(".", 770, 540);
    text(".", 800, 510);
    text(".", 815, 490);
    text(".", 840, 440);
    text(".", 850, 410);

    //
    textSize(40);
    text("¡YA ES UNA GOTAZA QUE CUELGA MAJESTUOSA!", 540, 700);
    popMatrix();

    boundaries.add(new Boundary(540, 700, 200, 5, 0));
  }
  void pantalla7() {
    fill(34, 113, 179); 
    pushMatrix();
    text("Y", 355, 90);
    text("D", 330, 130);
    text("E", 380, 130);
    textSize(18);
    text("P", 305, 160);
    text("R", 325, 160);
    text("O", 345, 160);
    text("N", 365, 160);
    text("T", 385, 160);
    text("O", 405, 160);
    textSize(28);
    text("¡", 305, 190);
    text("Z", 325, 220);
    text("U", 355, 230);
    text("P", 385, 220);
    text("!", 405, 190);

    textSize(35);
    text("Ahi va, ¡plaf!", 130, 500);

    text("D", 250, 500);
    text("e", 270, 530);
    text("s", 290, 560);
    text("e", 310, 566);
    text("c", 330, 572);
    text("h", 350, 578);
    text("a", 370, 578);
    text(",", 390, 578);

    text("N", 420, 572);
    text("A", 450, 566);
    text("D", 480, 560);
    text("A", 510, 530);
    text(",", 530, 530);

    textSize(40);
    text("una viscocidad en el marmol", 800, 500);
    popMatrix();

    boundaries.add(new Boundary(200, 200, 50, 5, 0));
  }

  void display() {
    switch(this.n) {
    case 0:
      inicio();
      break;
    case 1:
      pantalla1();
      break;
    case 2:
      pantalla2();
      break;
    case 3:
      pantalla3();
      break;
    case 4:
      pantalla4();
      break;
    case 5:
      pantalla5();
      break;
    case 6:
      pantalla6();
      break;
    case 7:
      pantalla7();
      break;
    }
  }
  void teclado() {
    if (key=='q') {
      n=1;
    }

    if (key=='w') {
      n=2;
    }
    if (key=='e') {
      n=3;
    }
    if (key=='r') {
      n=4;
    }
    if (key=='a') {
      n=5;
    }
    if (key=='s') {
      n=6;
    }
    if (key=='d') {
      n=7;
    }
    if (key=='f') {
      n=0;
    }

    if (keyCode==UP)
    {
      inicio=millis();
    }
  }
}

//inicializar programa principal
Pantalla ppal;
PinkNoise noise;

//inicializar box2d
Box2DProcessing box2d;
ArrayList<Boundary> boundaries;//inicializar new boundaries ()
ArrayList<ParticleSystem> systems;
ArrayList<Letras> letras;

int inicio;
int tiempo;
int limite= 30000;

void setup() {
  //especificaciones
  size(1080, 720);
  smooth();

  //box2d
  box2d = new Box2DProcessing(this);

  box2d.createWorld();
  box2d.setGravity(0, -20); 

  systems = new ArrayList<ParticleSystem>();
  boundaries = new ArrayList<Boundary>();
  letras= new ArrayList<Letras>();


  //programa principal
  ppal = new Pantalla();
  noise= new PinkNoise(this);
  noise.play();
}

void draw() {
  //especificaciones
  background(160);

  //programa principal
  ppal.display();

  //box2d
  box2d.step();

  for (ParticleSystem system : systems) {
    system.run();
    int n = (int) random(0, 3);
    system.addParticles(1);

    println(inicio);
    if (inicio!=0) {
      println(millis()-inicio);

      if (millis()-inicio>limite) {
        println("se termino");
      }
    }
  }

  noise.pan(map(mouseX, 0, width, -1.0, 1.0));
  noise.amp(map(mouseY, 0, height, 0.5, 0.1));
}

void mousePressed() {
  // Add a new Particle System whenever the mouse is clicked
  systems.add(new ParticleSystem(0, new PVector(mouseX, mouseY)));
}

void keyPressed() {
  ppal.teclado();
}
