//your code here
PImage witch;
Particle[] one;
//NormalParticle[] two;
void setup()
{
	
	size(700,700);
one= new Particle[800];
//two= new NormalParticle[100];
for(int i=0; i<100; i++)
	{
		one[i]=new NormalParticle(2);
		one[i+100]=new NormalParticle(3);
		one[i+200]=new OddballParticle(5);
		one[i+300]=new OddballParticle(7);
		one[i+400]=new EvenballParticle(7);
		one[i+500]=new EvenballParticle(5);
		one[i+600]=new RatballParticle(0.3);
		one[i+700]=new RatballParticle(2);
	


		
	}
	
	//your code here
}
void draw()
{
	fill(0,0,0,3);
	rect(0,0,600,600);
	background(0);
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
		myOp=0;
		myXX=(int)(Math.random()*45);
		myYY=(int)(Math.random()*45);
		myY=300;
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
		myY=300;
		speed=xspeed;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
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
		myX= 200;
		myOp=0;
		myY=300;
		speed=xspeed;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
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
		myY=200;
		speed=xspeed;
		angle=2*Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
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
        myY =350+ 200*(float)Math.sin((angle));
        System.out.println(myX +", " + myY);
	}
	//witch= loadImage("witch.png");
	//image( witch, mouseX,mouseY,width,height);
}







class RatballParticle implements Particle//uses an interface
{
	double  speed, myX,myY ;
	float myColor, myColor2, myColor3, myOp, angle; 
	// RatballParticle()
	// {
	// 	myOp=0;
	// 	speed=2;
	// 	angle=2*Math.PI*2*Math.random();
	// 	myColor=(int)(Math.random()*255);
	// 	myColor2=(int)(Math.random()*255);
	// 	myColor3=(int)(Math.random()*255);
	// }
	RatballParticle(double xspeed)
	{
		myOp=0;
		myY=50;
		myX=50;
		speed=xspeed;
		angle=(int)(Math.random()*5);
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

		myX = 350+Math.cos(angle*speed)*5*speed;
        myY = 350+Math.sin(angle*speed)*5*speed;
        angle=angle+angle*0.3;
        speed=speed+speed/0.4;
        if(myX>700 || myY>700)
        	myY=350;
        	myX=350;



        System.out.println(myX +", " + myY);
	}
	//witch= loadImage("witch.png");
	//image( witch, mouseX,mouseY,width,height);
}
class JumboParticle //uses inheritance
{
	//your code here
}

