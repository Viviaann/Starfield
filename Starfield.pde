//your code 
int oP;
PImage witch;
Particle[] one;
//NormalParticle[] two;
void setup()
{
	
	size(700,700);
one= new Particle[700];
//two= new NormalParticle[100];
for(int i=0; i<100; i++)
	{
		one[i]=new NormalParticle(2);
		one[i+100]=new NormalParticle(3);
		one[i+200]=new JumboParticle(5);
		one[i+300]=new OddballParticle(7);
		one[i+400]=new EvenballParticle(7);
		one[i+450]=new Ratball2Particle(3);
		one[i+500]=new RatballParticle(8);
		one[i+600]=new JumboParticle(0);
	


		
	}
	
	//your code here
}
void draw()
{
	oP=oP+1;
	fill(0,0,0,oP);
	rect(0,0,700,700);
	for(int i=0; i< one.length; i++)
	{

		one[i].show();
		one[i].move();
		
	}

 //    for(int i=1; i< two.length; i++)
	// {

	// 	two[i].show();
	// 	two[i].move();
		
	// }
	
}
	//your code here
interface Particle
{
 	public void move();
 	public void show();
}
class NormalParticle implements Particle
{
	double  angle, speed ;
	float myColor, myColor2, myColor3, myX,myY,myXX,myYY, myOp; 
	NormalParticle()
	{
		myX= 350;
	       myOp=120;
		myXX=(int)(Math.random()*45);
		myYY=(int)(Math.random()*45);
		myY=700;
		speed=2;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
	}
	NormalParticle(double xspeed)
	{
		myX= 350;
		myOp=0;
		myXX=(int)(Math.random()*45);
		myYY=(int)(Math.random()*45);
		myY=700;
		speed=xspeed;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*150);
		myColor2=(int)(Math.random()*150);
		myColor3=(int)(Math.random()*150);
	}
	public void show()
	{
		stroke(myColor,myColor2,myColor3,myOp);
		fill(myColor,myColor2,myColor3,myOp);
		ellipse(myX,myY,20,20);
	}
	public void move()
	{
		myOp=myOp+1;

		// myX=myX+(float)(Math.cos(angle*angle)*speed);
		// myY=myY+(float)(Math.sin(angle*angle)*speed);
		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myY=200;
		// 	}
		// if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myX=200;
		// 	myY=200;
		// 	}

		myX = (float)(myX + speed*Math.cos(angle));
        myY = (float)(myY + speed*Math.sin(angle));
        System.out.println(myX +", " + myY);
	}


	 
}

class OddballParticle implements Particle//uses an interface
{
	double  angle, speed ;
	float myColor, myColor2, myColor3, myX,myY, myOp; 
	OddballParticle()
	{
		myX= 500;
		myOp=0;
		myY=300;
		speed=2;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
	}
	OddballParticle(double xspeed)
	{
		myX= 350;
		myOp=0;
		myY=0;
		speed=xspeed;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=70;
	}
	public void show()
	{
		stroke(myColor,myColor2,myColor3,myOp);
		fill(myColor,myColor2,myColor3,myOp);
		ellipse(myX,myY,40,40);
	}
	public void move()
	{
		myOp=myOp+1;

		// myX=myX+(float)(Math.cos(angle*angle)*speed);
		// myY=myY+(float)(Math.sin(angle*angle)*speed);
		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myY=200;
		// 	}
		// if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myX=200;
		// 	myY=200;
		// 	}

		myX = (float)(myX + speed*Math.cos(angle));
        myY = (float)(myY + speed*Math.sin(angle));
        System.out.println(myX +", " + myY);
	}
	//witch= loadImage("witch.png");
	//image( witch, mouseX,mouseY,width,height);
}
class EvenballParticle implements Particle//uses an interface
{
	double  angle, speed ;
	float myColor, myColor2, myColor3, myX,myY, myOp; 
	EvenballParticle()
	{
		myX= 350;
		myOp=0;
		myY=600;
		speed=2;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
	}
	EvenballParticle(double xspeed)
	{
		myX= 350;
		myOp=0;
		myY=30;
		speed=xspeed;
		angle=2*Math.PI*2*Math.random();
		myColor=40;
		myColor2=(int)(Math.random()*199);
		myColor3=(int)(Math.random()*255);
	}
	public void show()
	{
		stroke(myColor,myColor2,myColor3,myOp);
		fill(myColor,myColor2,myColor3,myOp);
		ellipse(myX,myY,10,10);
	}
	public void move()
	{
		myOp=myOp+1;

		// myX=myX+(float)(Math.cos(angle*angle)*speed);
		// myY=myY+(float)(Math.sin(angle*angle)*speed);
		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myY=200;
		// 	}
		// if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myX=200;
		// 	myY=200;
		// 	}

		myX = 350+ 200*(float)Math.cos((angle));
        myY =350+ 300*(float)Math.sin((angle));
        System.out.println(myX +", " + myY);
	}
	//witch= loadImage("witch.png");
	//image( witch, mouseX,mouseY,width,height);
}







class RatballParticle implements Particle//uses an interface
{
	double  speed, myX,myY,angle ;
	float myColor, myColor2, myColor3, myOp; 
	//RatballParticle()
	//{
	//	myOp=0;
	//	speed=2;
	////	angle=2*Math.PI*2*Math.random(); 
 //        // angle=2*Math.PI/3*Math.PI*Math.random()*2;
 //           angle=2*Math.PI*2*Math.random();
	//	myColor=(int)(Math.random()*255);
	//	myColor2=(int)(Math.random()*255);
	//	myColor3=(int)(Math.random()*255);
	//}
	RatballParticle(double xspeed)
	{
        	myOp=0;
		myY=50;
		myX=50;
		speed=xspeed;
		angle=(Math.random()*5*Math.PI);
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
	}
	public void show()
	{
		// stroke(myColor,myColor2,myColor3,myOp);
		fill(myColor,myColor2,myColor3);
		ellipse((float)myX,(float)myY,10,10);
	}
	public void move()
	{
		myOp=myOp+3;

		// myX=myX+(float)(Math.cos(angle*angle)*speed);
		// myY=myY+(float)(Math.sin(angle*angle)*speed);
		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myY=200;
		// 	}
	        // if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
		// 	{myX=200;
		// 	myY=200;
		// 	}

        myX = 350+6*Math.cos(700*Math.sin(2*angle)*Math.tan(angle))*speed;
        myY =350+25*Math.sin(8*Math.tan(angle)*Math.tan(angle/0.4)/Math.cos(angle*3))*speed-5;
        //myX= 350+ Math.cos(2*angle);//Math.sqrt(5*5*Math.cos(2*angle));
        //myY = 350+Math.cos(2*angle);//+Math.sqrt(5*5*Math.cos(2*angle));
        myX= myX+10;
        myY=myY+10;
        angle=angle+0.3;
        //speed=speed/0.4;
        //if(myX>700 && myY>700)
        //  myY=350;
        //  myX=350;
        //  angle=angle+0.3;



        System.out.println(myX +", " + myY);
	}
	//witch= loadImage("witch.png");
	//image( witch, mouseX,mouseY,width,height);
}
class Ratball2Particle implements Particle//uses an interface
{
  double  speed, myX,myY,angle ;
  float myColor, myColor2, myColor3, myOp; 
  //RatballParticle()
  //{
  //  myOp=0;
  //  speed=2;
  ////  angle=2*Math.PI*2*Math.random(); 
 //        // angle=2*Math.PI/3*Math.PI*Math.random()*2;
 //           angle=2*Math.PI*2*Math.random();
  //  myColor=(int)(Math.random()*255);
  //  myColor2=(int)(Math.random()*255);
  //  myColor3=(int)(Math.random()*255);
  //}
  Ratball2Particle(double xspeed)
  {
          myOp=0;
    myY=50;
    myX=50;
    speed=xspeed;
    angle=(Math.random()*5*Math.PI);
    myColor=255;
    myColor2=255;
    myColor3=255;
  }
  public void show()
  {
    // stroke(myColor,myColor2,myColor3,myOp);
    fill(myColor,myColor2,myColor3);
    ellipse((float)myX,(float)myY,10,10);
  }
  public void move()
  {
    myOp=myOp+3;

    // myX=myX+(float)(Math.cos(angle*angle)*speed);
    // myY=myY+(float)(Math.sin(angle*angle)*speed);
    // if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
    //   {myY=200;
    //   }
          // if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
    //   {myX=200;
    //   myY=200;
    //   }

        myX = 350+6*Math.cos(700*Math.sin(2*angle)*Math.tan(angle))*speed;
        myY =350+25*Math.sin(8*Math.tan(angle)*Math.tan(angle/0.4)/Math.cos(angle*3))*speed-5;
        //myX= 350+ Math.cos(2*angle);//Math.sqrt(5*5*Math.cos(2*angle));
        //myY = 350+Math.cos(2*angle);//+Math.sqrt(5*5*Math.cos(2*angle));
        myX= myX+10;
        myY=myY+10;
        angle=angle+0.3;
        //speed=speed/0.4;
        //if(myX>700 && myY>700)
        //  myY=350;
        //  myX=350;
        //  angle=angle+0.3;



        System.out.println(myX +", " + myY);
  }
  //witch= loadImage("witch.png");
  //image( witch, mouseX,mouseY,width,height);
}
class JumboParticle extends NormalParticle
{
  JumboParticle(double xspeed){
    angle=(Math.PI/(Math.random()));
    myColor2= 30;
    myX=(float)(350-120*Math.cos(angle)*speed);
    myX= myX +1;
    myY=(float)(350+50*Math.cos(angle)*speed);
  }
  //JumboParticle(double xspeed){
  //    myOp=0;
  //  myY=50;
  //  myX=50;
  //  speed=xspeed;
  //  angle=(Math.random()*5*Math.PI);
  //  myColor=(int)(Math.random()*255);
  //  myColor2=(int)(Math.random()*255);
  //  myColor3=(int)(Math.random()*255);
  //}
  //void move()
  //{
  //   myX = 350+2*Math.cos(angle)*speed;
  //      myY =350+2*Math.sin(angle)*speed;
  //      //myX= 350+ Math.cos(2*angle);//Math.sqrt(5*5*Math.cos(2*angle));
  //      //myY = 350+Math.cos(2*angle);//+Math.sqrt(5*5*Math.cos(2*angle));
  //      myX= myX+10;
  //      myY=myY+10;
  //      angle=angle+0.3;
  //}
  }
// //your code 
// int oP;
// PImage witch;
// Particle[] one;
// //NormalParticle[] two;
// void setup()
// {
	
// 	size(700,700);
// one= new Particle[700];
// //two= new NormalParticle[100];
// for(int i=0; i<100; i++)
// 	{
// 		one[i]=new NormalParticle(2);
// 		one[i+100]=new NormalParticle(3);
// 		one[i+200]=new JumboParticle(5);
// 		one[i+300]=new OddballParticle(7);
// 		one[i+400]=new EvenballParticle(7);
// 		one[i+450]=new Ratball2Particle(3);
// 		one[i+500]=new RatballParticle(8);
// 		one[i+600]=new JumboParticle(0);
	


		
// 	}
	
// 	//your code here
// }
// void draw()
// {
// 	oP=oP+1;
// 	fill(0,0,0,oP);
// 	rect(0,0,700,700);
// 	for(int i=0; i< one.length; i++)
// 	{

// 		one[i].show();
// 		one[i].move();
		
// 	}

//  //    for(int i=1; i< two.length; i++)
// 	// {

// 	// 	two[i].show();
// 	// 	two[i].move();
		
// 	// }
	
// }
// 	//your code here
// interface Particle
// {
//  	public void move();
//  	public void show();
// }
// class NormalParticle implements Particle
// {
// 	double  angle, speed ;
// 	float myColor, myColor2, myColor3, myX,myY,myXX,myYY, myOp; 
// 	NormalParticle()
// 	{
// 		myX= 350;
// 	       myOp=120;
// 		myXX=(int)(Math.random()*45);
// 		myYY=(int)(Math.random()*45);
// 		myY=700;
// 		speed=2;
// 		angle=2*Math.PI*2*Math.random();
// 		myColor=(int)(Math.random()*255);
// 		myColor2=(int)(Math.random()*255);
// 		myColor3=(int)(Math.random()*255);
// 	}
// 	NormalParticle(double xspeed)
// 	{
// 		myX= 350;
// 		myOp=0;
// 		myXX=(int)(Math.random()*45);
// 		myYY=(int)(Math.random()*45);
// 		myY=700;
// 		speed=xspeed;
// 		angle=2*Math.PI*2*Math.random();
// 		myColor=(int)(Math.random()*150);
// 		myColor2=(int)(Math.random()*150);
// 		myColor3=(int)(Math.random()*150);
// 	}
// 	public void show()
// 	{
// 		stroke(myColor,myColor2,myColor3,myOp);
// 		fill(myColor,myColor2,myColor3,myOp);
// 		ellipse(myX,myY,20,20);
// 	}
// 	public void move()
// 	{
// 		myOp=myOp+1;

// 		// myX=myX+(float)(Math.cos(angle*angle)*speed);
// 		// myY=myY+(float)(Math.sin(angle*angle)*speed);
// 		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myY=200;
// 		// 	}
// 		// if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myX=200;
// 		// 	myY=200;
// 		// 	}

// 		myX = (float)(myX + speed*Math.cos(angle));
//         myY = (float)(myY + speed*Math.sin(angle));
//         System.out.println(myX +", " + myY);
// 	}


	 
// }

// class OddballParticle implements Particle//uses an interface
// {
// 	double  angle, speed ;
// 	float myColor, myColor2, myColor3, myX,myY, myOp; 
// 	OddballParticle()
// 	{
// 		myX= 500;
// 		myOp=0;
// 		myY=300;
// 		speed=2;
// 		angle=2*Math.PI*2*Math.random();
// 		myColor=(int)(Math.random()*255);
// 		myColor2=(int)(Math.random()*255);
// 		myColor3=(int)(Math.random()*255);
// 	}
// 	OddballParticle(double xspeed)
// 	{
// 		myX= 350;
// 		myOp=0;
// 		myY=0;
// 		speed=xspeed;
// 		angle=2*Math.PI*2*Math.random();
// 		myColor=(int)(Math.random()*255);
// 		myColor2=(int)(Math.random()*255);
// 		myColor3=70;
// 	}
// 	public void show()
// 	{
// 		stroke(myColor,myColor2,myColor3,myOp);
// 		fill(myColor,myColor2,myColor3,myOp);
// 		ellipse(myX,myY,40,40);
// 	}
// 	public void move()
// 	{
// 		myOp=myOp+1;

// 		// myX=myX+(float)(Math.cos(angle*angle)*speed);
// 		// myY=myY+(float)(Math.sin(angle*angle)*speed);
// 		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myY=200;
// 		// 	}
// 		// if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myX=200;
// 		// 	myY=200;
// 		// 	}

// 		myX = (float)(myX + speed*Math.cos(angle));
//         myY = (float)(myY + speed*Math.sin(angle));
//         System.out.println(myX +", " + myY);
// 	}
// 	//witch= loadImage("witch.png");
// 	//image( witch, mouseX,mouseY,width,height);
// }
// class EvenballParticle implements Particle//uses an interface
// {
// 	double  angle, speed ;
// 	float myColor, myColor2, myColor3, myX,myY, myOp; 
// 	EvenballParticle()
// 	{
// 		myX= 350;
// 		myOp=0;
// 		myY=600;
// 		speed=2;
// 		angle=2*Math.PI*2*Math.random();
// 		myColor=(int)(Math.random()*255);
// 		myColor2=(int)(Math.random()*255);
// 		myColor3=(int)(Math.random()*255);
// 	}
// 	EvenballParticle(double xspeed)
// 	{
// 		myX= 350;
// 		myOp=0;
// 		myY=30;
// 		speed=xspeed;
// 		angle=2*Math.PI*2*Math.random();
// 		myColor=40;
// 		myColor2=(int)(Math.random()*199);
// 		myColor3=(int)(Math.random()*255);
// 	}
// 	public void show()
// 	{
// 		stroke(myColor,myColor2,myColor3,myOp);
// 		fill(myColor,myColor2,myColor3,myOp);
// 		ellipse(myX,myY,10,10);
// 	}
// 	public void move()
// 	{
// 		myOp=myOp+1;

// 		// myX=myX+(float)(Math.cos(angle*angle)*speed);
// 		// myY=myY+(float)(Math.sin(angle*angle)*speed);
// 		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myY=200;
// 		// 	}
// 		// if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myX=200;
// 		// 	myY=200;
// 		// 	}

// 		myX = 350+ 200*(float)Math.cos((angle));
//         myY =350+ 300*(float)Math.sin((angle));
//         System.out.println(myX +", " + myY);
// 	}
// 	//witch= loadImage("witch.png");
// 	//image( witch, mouseX,mouseY,width,height);
// }







// class RatballParticle implements Particle//uses an interface
// {
// 	double  speed, myX,myY,angle ;
// 	float myColor, myColor2, myColor3, myOp; 
// 	//RatballParticle()
// 	//{
// 	//	myOp=0;
// 	//	speed=2;
// 	////	angle=2*Math.PI*2*Math.random(); 
//  //        // angle=2*Math.PI/3*Math.PI*Math.random()*2;
//  //           angle=2*Math.PI*2*Math.random();
// 	//	myColor=(int)(Math.random()*255);
// 	//	myColor2=(int)(Math.random()*255);
// 	//	myColor3=(int)(Math.random()*255);
// 	//}
// 	RatballParticle(double xspeed)
// 	{
//         	myOp=0;
// 		myY=50;
// 		myX=50;
// 		speed=xspeed;
// 		angle=(Math.random()*5*Math.PI);
// 		myColor=(int)(Math.random()*255);
// 		myColor2=(int)(Math.random()*255);
// 		myColor3=(int)(Math.random()*255);
// 	}
// 	public void show()
// 	{
// 		// stroke(myColor,myColor2,myColor3,myOp);
// 		fill(myColor,myColor2,myColor3);
// 		ellipse((float)myX,(float)myY,10,10);
// 	}
// 	public void move()
// 	{
// 		myOp=myOp+3;

// 		// myX=myX+(float)(Math.cos(angle*angle)*speed);
// 		// myY=myY+(float)(Math.sin(angle*angle)*speed);
// 		// if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myY=200;
// 		// 	}
// 	        // if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
// 		// 	{myX=200;
// 		// 	myY=200;
// 		// 	}

//         myX = 350+6*Math.cos(700*Math.sin(2*angle)*Math.tan(angle))*speed;
//         myY =350+25*Math.sin(8*Math.tan(angle)*Math.tan(angle/0.4)/Math.cos(angle*3))*speed-5;
//         //myX= 350+ Math.cos(2*angle);//Math.sqrt(5*5*Math.cos(2*angle));
//         //myY = 350+Math.cos(2*angle);//+Math.sqrt(5*5*Math.cos(2*angle));
//         myX= myX+10;
//         myY=myY+10;
//         angle=angle+0.3;
//         //speed=speed/0.4;
//         //if(myX>700 && myY>700)
//         //  myY=350;
//         //  myX=350;
//         //  angle=angle+0.3;



//         System.out.println(myX +", " + myY);
// 	}
// 	//witch= loadImage("witch.png");
// 	//image( witch, mouseX,mouseY,width,height);
// }
// class Ratball2Particle implements Particle//uses an interface
// {
//   double  speed, myX,myY,angle ;
//   float myColor, myColor2, myColor3, myOp; 
//   //RatballParticle()
//   //{
//   //  myOp=0;
//   //  speed=2;
//   ////  angle=2*Math.PI*2*Math.random(); 
//  //        // angle=2*Math.PI/3*Math.PI*Math.random()*2;
//  //           angle=2*Math.PI*2*Math.random();
//   //  myColor=(int)(Math.random()*255);
//   //  myColor2=(int)(Math.random()*255);
//   //  myColor3=(int)(Math.random()*255);
//   //}
//   Ratball2Particle(double xspeed)
//   {
//           myOp=0;
//     myY=50;
//     myX=50;
//     speed=xspeed;
//     angle=(Math.random()*5*Math.PI);
//     myColor=255;
//     myColor2=255;
//     myColor3=255;
//   }
//   public void show()
//   {
//     // stroke(myColor,myColor2,myColor3,myOp);
//     fill(myColor,myColor2,myColor3);
//     ellipse((float)myX,(float)myY,10,10);
//   }
//   public void move()
//   {
//     myOp=myOp+3;

//     // myX=myX+(float)(Math.cos(angle*angle)*speed);
//     // myY=myY+(float)(Math.sin(angle*angle)*speed);
//     // if(myY == 9*myY+(float)(Math.sin(angle*angle)*speed) )
//     //   {myY=200;
//     //   }
//           // if(myX == 9*myY+(float)(Math.sin(angle*angle)*speed) )
//     //   {myX=200;
//     //   myY=200;
//     //   }

//         myX = 350+6*Math.cos(700*Math.sin(2*angle)*Math.tan(angle))*speed;
//         myY =350+25*Math.sin(8*Math.tan(angle)*Math.tan(angle/0.4)/Math.cos(angle*3))*speed-5;
//         //myX= 350+ Math.cos(2*angle);//Math.sqrt(5*5*Math.cos(2*angle));
//         //myY = 350+Math.cos(2*angle);//+Math.sqrt(5*5*Math.cos(2*angle));
//         myX= myX+10;
//         myY=myY+10;
//         angle=angle+0.3;
//         //speed=speed/0.4;
//         //if(myX>700 && myY>700)
//         //  myY=350;
//         //  myX=350;
//         //  angle=angle+0.3;



//         System.out.println(myX +", " + myY);
//   }
//   //witch= loadImage("witch.png");
//   //image( witch, mouseX,mouseY,width,height);
// }
// class JumboParticle extends NormalParticle
// {
//   JumboParticle(double xspeed){
//     angle=(Math.PI/(Math.random()));
//     myColor2= 30;
//     myX=(float)(350-120*Math.cos(angle)*speed);
//     myX= myX +1;
//     myY=(float)(350+50*Math.cos(angle)*speed);
//   }
//   //JumboParticle(double xspeed){
//   //    myOp=0;
//   //  myY=50;
//   //  myX=50;
//   //  speed=xspeed;
//   //  angle=(Math.random()*5*Math.PI);
//   //  myColor=(int)(Math.random()*255);
//   //  myColor2=(int)(Math.random()*255);
//   //  myColor3=(int)(Math.random()*255);
//   //}
//   //void move()
//   //{
//   //   myX = 350+2*Math.cos(angle)*speed;
//   //      myY =350+2*Math.sin(angle)*speed;
//   //      //myX= 350+ Math.cos(2*angle);//Math.sqrt(5*5*Math.cos(2*angle));
//   //      //myY = 350+Math.cos(2*angle);//+Math.sqrt(5*5*Math.cos(2*angle));
//   //      myX= myX+10;
//   //      myY=myY+10;
//   //      angle=angle+0.3;
//   //}
//   }