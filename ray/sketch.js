let ray;
let wall;  //boundary_obs
function setup()
{
  createCanvas(1024, 768); 
  ray = new Ray(100, 200)
  wall = new Boundary(300,100,300,300);
}
function draw()
{
  background(0);
  wall.show();
  ray.show();
}
