class Particle {

  // We need to keep track of a Body
  Body body;

  PVector[] trail;

  // Constructor
  Particle(float x_, float y_) {
    float x = x_;
    float y = y_;
    trail = new PVector[6];
    for (int i = 0; i < trail.length; i++) {
      trail[i] = new PVector(x,y);
    }

    // Add the box to the box2d world
    // This way we have collisions, but they don't overwhelm the system
    makeBody(new Vec2(x,y),0.2f);
  }

  
  void killBody() {
    box2d.destroyBody(body);
  }

  // Is the particle ready for deletion?
  boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.y > height+50) {
      killBody();
      return true;
    }
    return false;
  }

  // Drawing the box
  void display() {
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);

    // Keep track of a history of screen positions in an array
    for (int i = 0; i < trail.length-1; i++) {
      trail[i] = trail[i+1];
    }
    trail[trail.length-1] = new PVector(pos.x,pos.y);

    // Draw particle as a trail
    beginShape();
    noFill();
    strokeWeight(2);
    stroke(63,136,143);
    for (int i = 0; i < trail.length; i++) {
      vertex(trail[i].x,trail[i].y);
    }
    endShape();
  }

  
  void makeBody(Vec2 center, float r) {
    // Define and create the body
    BodyDef bd = new BodyDef();
        bd.type = BodyType.DYNAMIC;

    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);

  
    body.setLinearVelocity(new Vec2(random(-1,1),random(-1,1)));

 
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
  
    fd.density = 1;
    fd.friction = 0;  
    fd.restitution = 0.5;
 

    // Attach fixture to body
    body.createFixture(fd);

  }

}
