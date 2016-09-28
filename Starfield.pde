//your code here
PImage witch;
NormalParticle[] one;
void setup()
{
	size(400,400);

	
	//your code here
}
void draw()
{
one= new NormalParticle[100];
	for(int i=1; i< one.length; i++)
	{
		one[i]=new NormalParticle();
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
		speed=(int)(Math.random()*10);
		angle=Math.PI*2*Math.random();
		myColor=(int)(Math.random()*255);
		myColor2=(int)(Math.random()*255);
		myColor3=(int)(Math.random()*255);
	}
	void show()
	{
		fill(myColor,myColor2,myColor3);
		ellipse(myX,myY,20,20);
	}
	void move()
	{
		speed=speed+1;
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

