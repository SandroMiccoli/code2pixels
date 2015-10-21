/**
 * Flocking 
 * by Daniel Shiffman.  
 * 
 * An implementation of Craig Reynold's Boids program to simulate
 * the flocking behavior of birds. Each boid steers itself based on 
 * rules of avoidance, alignment, and coherence.
 * 
 * Click the mouse to add a new boid.
 */
boolean run = true;
Flock flock;

void setup() {
  size(600, 600);
  background(#616E83);
  flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 100; i++) {
    flock.addBoid(new Boid(random(width),random(height)));
  }
}

void draw() {
  if (run)
    flock.run();
}

// Add a new boid into the System
void mousePressed() {
  //flock.addBoid(new Boid(mouseX,mouseY));
  run = !run;
}
