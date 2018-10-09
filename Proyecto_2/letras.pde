class Letras {

  float alto;
  float ancho;
  Body b;
  color c;

  Letras(float x_, float y_, float alto_,float ancho_) {
    this.c= color (0, 0, 255); 
    this.alto=alto_;
    this.ancho=ancho_;

    BodyDef bd= new BodyDef();
    bd.type= BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(x_, y_));

    b= box2d.createBody(bd);

    PolygonShape ps= new PolygonShape();
    float anchoAjustado = box2d.scalarPixelsToWorld(ancho_/2);
    float altoAjustado = box2d.scalarPixelsToWorld(alto_/2);
    ps.setAsBox(anchoAjustado, altoAjustado);

    FixtureDef fd= new FixtureDef();
    fd.shape= ps;
    fd.density= 1;
    fd.friction=0.2;
    fd.restitution=0.4;

    b.createFixture(fd);

    b.setLinearVelocity(new Vec2 (10, 20));
  }

  boolean EnPantalla() {

    Vec2 posicion= box2d.getBodyPixelCoord(b);
    if (posicion.y>height+max(this.ancho, this.alto)) {
      killBody();
      return false;
    } else {
      return true;
    }
  }

  void killBody() {
    box2d.destroyBody(b);
  }

  
  void display() {
    Vec2 posicion= box2d.getBodyPixelCoord(b);
    float angulo= b.getAngle();
    pushMatrix();
    translate(posicion.x, posicion.y);
    rotate(-angulo);
    noStroke();
    fill(this.c);
    rect(width/2, height/2, ancho, alto);
    popMatrix();
  }
}

//meter milis en cada void, y meter false de lo activar en cada momento
//boundaries en setup y apagar con active
