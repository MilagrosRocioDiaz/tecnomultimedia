PImage vespa1;
PImage vespa2;
PImage vespa3;
PImage reinicio;

PFont fuente1,fuente2,fuente3;

int Movimiento = 100;
int pantalla = 1;
int segundos = 0;
 

void setup(){
  
 size (640,480);
 
  vespa1 = loadImage ("vespa1.jpg");
  vespa2 = loadImage ("vespa2.jpg");
  vespa3 = loadImage ("vespa3.jpg");

  reinicio = loadImage ("reinicio.png");
  
 fuente1 = loadFont("MarcellusSC-Regular-38.vlw");
 fuente2 = loadFont("AgencyFB-Bold-48.vlw");
 fuente3 = loadFont("Cambria-48.vlw");

}

void draw(){
  background(0);
  if ( frameCount  %  60  ==  0 ) {
    segundos = segundos +  1 ;
  }

 
 if (segundos <=  2 ) {
    image ( vespa1 , 0 , 0 , 640 , 480 );
    textFont ( fuente1 , 40 );
    fill ( 255);
    text ("La vespa \n es un prototipo de una\n motocicleta tipo scooter,\n el primer prototipo recibio \n el nombre de Paperino que \n significo patito en italiano.", 100 , Movimiento);
     Movimiento= Movimiento + 1;
  
  } else  if (segundos <=  4 ) {
    pantalla =  2 ;
    image ( vespa2 , 0 , 0 , 640 , 480 );
    textFont ( fuente2 , 40 );
    fill ( 0 );
    text ( "En 1940,Pontedera en Italia,\n Corradino D Ascanio diseña la primera \n vespa un trasnporte sencillo y\n economico tambien facil de conducir",100,Movimiento );

    Movimiento  =  Movimiento  - 2 ;
  } else if(segundos > 4 ) {
    pantalla =  3 ;
    image ( vespa3 , 0 , 0 , 640 , 480 );
    fill (255 );
    textFont ( fuente3 , 30 );
    text ( "Por otro lado\n su fundador Enrico Piaggio\n quiso que la Vespa estuviese al alcance\n económico de todos\n y lo consiguió gracias a la utilización\n de una herramienta pionera en \n1946: la venta a plazos.  ", 100, Movimiento );

    Movimiento = Movimiento +  1 ;

    image(reinicio,530,420,100,40);
    
  }
}

void  mousePressed () {

  if (segundos >  4  && pantalla ==  3  &&  mouseX  >  530  &&  mouseX  <  628  &&  mouseY  >  420  &&  mouseY  <  460 ) {
    segundos =  0 ;
    pantalla =  1 ;
    Movimiento  =  100;
    segundos=0;
    
  }
}
