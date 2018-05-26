PFont font1; //Para começar crie um objeto PFont
PImage back; //Objeto PImage para nossa imagem de fundo
 int y = 397, escore;
float x = 30;
void setup(){
  size(400,500);
  back = loadImage("nebulosa.jpg"); //carrega a imagem
  image(back,0,0); //Desenha a imagem na posição 0x0
  fill(0,0,0);   //Seta a cor a ser usada
 font1 = loadFont("alien.vlw"); //Carrega o arquivo de fonte
  textFont(font1); //Seta a fonte a ser usada
  
}

void draw(){
  image(back,0,0); //Desenha a imagem na posição 0x0
  
//tiro
  fill(255);
  ellipse(205,y,8,8);
  
//alvo
fill(250,10,210);
ellipse(x,60,30,30);
fill(250,10,210);
ellipse(x,60,20,20);
fill(3,215,255);
ellipse(x,60,10,10);


//nave
fill(33,36,191);
rect(200,400,10,5);
rect(194,405,20,20);
rect(180,420,50,16);
rect(175,415,10,20);
rect(222,415,10,20);


//tiro, texto e pontuação
fill(255);
text(escore,300,40);
x = x + 1; //movimento do alvo

if(x>400)//reaparecimento do alvo
  x=0;

if(mouseButton == LEFT){  //tiro
       y = y-3;
} 
   else if ( mouseButton == RIGHT || y < 0){ // reaparecimento do tiro
         y = 397;
}

if(dist(205,y,x,60) < 15){ //acerto do alvo e pontuação
 x = 0;
 y = 397;
 escore++;
}
if( escore > 0 && x >= 400){ // zera a pontuação quando erra o alvo
  escore = 0;
}

 if(escore >= 10){ // velocidade do alvo
  x = x + 1.1;
 }
}