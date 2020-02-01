float rho1 = 1000;
float rho2 = 800;
float r = 20.0f;
float m ;
float V;
float S;

float y = 0.0f;
float v = 0.0f;
float g = 9.8f;
float a;
float dt = 0.01;


void setup(){
  size(600,400);
  frameRate(100);
  background(200);
  
  V = 2*r*2*r*2*r;
  S = 2*r*2*r;
  m = V * rho2;
  
}

void draw(){
  background(200);
  fill(150,150,255);
  rect(0,270,600,400);
  float t = frameCount*dt;
  float F;
  
  if(y > 250){
    F = rho2*V*g - rho1*S*(y-230)*g;
    a = F/m;
    v = v + a*t;
    if(v<0){
      v = 0.9*v;
    }
    y = y + v*dt + (1/2)*a*dt*dt;
    
    fill(255);
    rect(280,y,2*r,2*r);
  }else if(y>290){
    F = rho2*V*g-rho1 *V*g;
    a = (F/m);
    v = v + a*t;
    if(v<0){
      v = 0.9*v;
    }
    y = y + v*dt + (1/2)*a*dt*dt;
    
    fill(255);
    rect(280,y,2*r,2*r);
  }else{
    v = v + g*t;
    y = y + v*dt + (1/2)*g*dt*dt;
    
    fill(255);
    rect(280,y,2*r,2*r);
  }
  
}
