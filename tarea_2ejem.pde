import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



Minim minim;
AudioPlayer player;

int veloc=0; //variable de velocidad
int frenado=0;
int tiempo=0;
int dato=10;

void setup(){
  size(1000,800);
  minim=new Minim(this);
  player=minim.loadFile("blondon boys-heteros.mp3");
}

void draw(){
  int Time=millis();
  
  background(50);
  fill(255);
  textSize(50);
  text("Aceleración",180,130);
  textSize(50);
  text("Frenado",690,130);
  
 
  
  
  fill(255);
  text(veloc,280,170);
  
  
 
  fill(100,100,100);
  rect(400,450,320,100);
  
  
  float posicion = dist(mouseX,mouseY,300,300);
  fill(0); stroke(100,100,0);
  if (posicion <125){
    veloc=veloc+1;
    tiempo=tiempo+1;
    fill(200,0,200);
    if(Time > 10000){player.play();}
  }
  else{veloc=veloc-1;}
  if(veloc<0){veloc=0;}
  if(veloc>320){veloc=320;}
  
  ellipse(300,300,250,250);
  
  float posicion2=dist(mouseX,mouseY,800,300);
  fill(0); stroke(100,100,0);
  if(posicion2 < 125){
    frenado=frenado+1;
    text(veloc,300,300);
    fill(200,0,0);
    
  }
  else{frenado=frenado-1;}
  if(frenado<0){frenado=0;}
  if (frenado>260){frenado=260;}
  
  ellipse(800,300,250,250);
  
  
  fill(255);
  rect(440,450,1,100);
  rect(480,450,1,100);
  rect(520,450,1,100);
  rect(560,450,1,100);
  rect(600,450,1,100);
  rect(640,450,1,100);
  rect(680,450,1,100);
  
  fill(0,0,100);
  rect(veloc+400,450,5,100);
  if(frenado>dato){
  fill(200 ,0,0);
  ellipse(550,700,150,150);
  fill(255);
  text(veloc,780,170);
  }
  fill(0,0,0);
  textSize(20);
  text("0",400,570);
  text("40",430,570);
  text("80",473,570);
  text("120",507,570);
  text("160",547,570);
  text("200",587,570);
  text("240",627,570);
  text("280",668,570);
  text("320",707,570);
  
  fill(veloc,0,0);
  
  
  if(veloc==320){
    textSize(100);
    fill(255);
    text("Maxima aceleración",100,300);
  }
  if (frenado==320){
    fill(255);
    textSize(100);
    fill(255);
    text("alerta",300,300);
  }
}
