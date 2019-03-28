
void setup() {
  size(600, 600); 
  smooth();
  noStroke();
}

void draw(){
  translate(width/2,height/2);
  ellipse(0,0,540,540);
  float raio1 = 270;
  for(int i=0;i<60;i++){
  float sec = (PI/30*second())-PI/2;
  float min = (PI/1800*(minute()*60+second()))-PI/2;  
  float hora = (PI/21600*((hour()*3600 + minute()*60 + second()))) - PI/2;
   
    if(i%5 == 0){
      line(raio1*cos(TWO_PI/60*i),raio1*sin(TWO_PI/60*i),(raio1*0.8)*cos(TWO_PI/60*i),(raio1*0.8)*sin(TWO_PI/60*i));
    }
    
    line(raio1*cos(TWO_PI/60*i),raio1*sin(TWO_PI/60*i),(raio1*0.9)*cos(TWO_PI/60*i),(raio1*0.9)*sin(TWO_PI/60*i));
    stroke(255,0,0);
    line(0,0,(raio1*0.55)*cos(sec),(raio1*0.55)*sin(sec));
    stroke(0);
    line(0,0,(raio1*0.8)*cos(min),(raio1*0.8)*sin(min));
    line(0,0,(raio1*0.65)*cos(hora),(raio1*0.65)*sin(hora));

  }
}

