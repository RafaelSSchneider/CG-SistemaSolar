class Planet {
  // Each planet object keeps track of its own angle of rotation.
  float theta;      // Rotation around sun
  float diameter;   // Size of planet
  float distance;   // Distance from sun
  float orbitspeed; // Orbit speed
  float orbitDistance;
  color moonColor;
  color planetColor;
 
  // Each Planet now has a Moon!
  Moon[] moons = new Moon[2];
  
  
  Planet(float distance_, float diameter_, color planetColor_) {
    distance = distance_;
    diameter = diameter_;
    planetColor = planetColor_;
    theta = 0;
    orbitspeed = random(0.01,0.03);
    orbitDistance = random(40, 50); 
    
    moonColor = color(random(255), random(255), random(255));
    // create the Moon 24 pixels from the planet with a diameter of 5
   for (int i = 0; i < moons.length; i++ ) {
    moons[i] = new Moon(orbitDistance, 12 + random(0,24), moonColor);
  }
  
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
  }
  
  void display() {
    // Before rotation and translation, the state of the matrix is saved with pushMatrix().
    pushMatrix(); 
    // Rotate orbit
    rotate(theta); 
    // translate out distance
    translate(distance,0); 
    stroke(0);
    fill(planetColor);
    ellipse(0,0,diameter,diameter);
    // The planet is drawn, now draw the moon
    for (int i = 0; i < moons.length; i++ ) {
      moons[i].update();
      moons[i].display();
    }
    
    // Once the planet is drawn, the matrix is restored with popMatrix() so that the next planet is not affected.
    popMatrix(); 
  }
}
