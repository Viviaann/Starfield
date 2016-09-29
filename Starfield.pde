//your code here
PImage witch;
NormalParticle[] one;
void setup()
{
	background(0);
	size(700,700);
one= new NormalParticle[100];
for(int i=1; i< one.length; i++)
	{
		one[i]=new NormalParticle();

		
	}
	
	//your code here
}
void draw()
{
	for(int i=1; i< one.length; i++)
	{
		one[i].show();
		one[i].move();
		
	}
	//your code here
}
class NormalParticle
{
	double  speed, angle;
	float myColor, myColor2, myColor3, myX,myY; 
	NormalParticle()
	{
		myX= 200;
		myY=200;
		speed=(int)(Math.random()*5);
		angle=Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
	}
	void show()
	{
		noStroke();
		fill(myColor2,myColor2,myColor3);
		ellipse(myX,myY,20,20);
	}
	void move()
	{
		myX=myX+(float)(Math.cos(Math.PI/2)*speed)+(int)(Math.random()*25-(int)(Math.random()*25));
		myY=myY+(float)(Math.sin(2*Math.PI/4)*speed)+(int)(Math.random()*25-(int)(Math.random()*25));
	}

	 
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//witch= loadImage("witch.png");
	//image( witch, mouseX,mouseY,width,height);
}
class JumboParticle //uses inheritance
{
	//your code here
}

