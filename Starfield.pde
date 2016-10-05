//your code here
PImage witch;
Particle[] one;
//NormalParticle[] two;
void setup()
{
	
	size(700,700);
one= new Particle[400];
//two= new NormalParticle[100];
for(int i=0; i<100; i++)
	{
		one[i]=new NormalParticle(2);
		one[i+100]=new NormalParticle(3);
		one[i+200]=new OddballParticle(5);
		one[i+300]=new OddballParticle(7);


		
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
		myX= 200;
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
		myX= 200;
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
class JumboParticle //uses inheritance
{
	//your code here
}

