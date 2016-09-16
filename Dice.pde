int sum = 0; 
void setup() 
{ 
size(500,500); 
noLoop(); 
} 
void draw() 
{ 
	background(0,255,0); 
	for(int i = 20; i < 500; i += 100) 
	{ 
 		for(int j = 25; j < 500; j += 100) 
 		{	 
			Die bob = new Die(i,j); 
			bob.roll(); 
			bob.show(); 
		} 
	} 
	text("Sum of Roll: " + sum, 75,100); 
 } 
 void mousePressed() 
 { 
 	sum = 0; 
 	redraw(); 
} 
class Die //models one single dice cube 
{
 	int myX; 
 	int myY; 
 	int dots; 

 	Die(int x, int y) 
 	{ 
 		myX = x; 
 		myY = y; 
 		roll(); 
 	} 
 	void roll() 
 	{ 
 		int points = ((int)(Math.random() * 6) + 1); 
 		if(points == 1) 
 		{ 
 			dots = 1; 
 		} 
 		if(points == 2) 
 		{ 
 			dots = 2; 
 		} 
 		if(points == 3) 
 		{ 
 			dots = 3; 
 		} 
 		if(points == 4) 
 		{ 
 			dots = 4; 
 		} 
 		if(points == 5) 
 		{ 
 			dots = 5; 
 		} 
 		if(points == 6) 
 		{ 
 			dots = 6; 
 		} 
 	} 
 	void show() 
 	{ 
 		noStroke(); 
 		fill(255); 
 		rect(myX, myY, 50, 50, 5); 
 		fill(0); 
		if(dots == 1) 
		{ 
 			ellipse(myX + 25, myY + 25, 5, 5); 
 		} 
 		if(dots == 2) 
 		{ 
 			ellipse(myX + 15, myY + 15, 5, 5); 
 			ellipse(myX + 35, myY + 35, 5, 5); 
 		} 
 		if(dots == 3) 
 		{ 
 			ellipse(myX + 25, myY + 25, 5, 5); 
 			ellipse(myX + 15, myY + 15, 5, 5); 
 			ellipse(myX + 35, myY + 35, 5, 5); 
 		} 
 		if(dots == 4) 
 		{ 
 			ellipse(myX + 15, myY + 15, 5, 5); 
 			ellipse(myX + 35, myY + 35, 5, 5); 
 			ellipse(myX + 35, myY + 15, 5, 5); 
 			ellipse(myX + 15, myY + 35, 5, 5); 
 		} 
 		if(dots == 5) 
 		{ 
 			ellipse(myX + 25, myY + 25, 5, 5); 
 			ellipse(myX + 15, myY + 15, 5, 5); 
 			ellipse(myX + 35, myY + 35, 5, 5); 
 			ellipse(myX + 35, myY + 15, 5, 5); 
 			ellipse(myX + 15, myY + 35, 5, 5); 
 		} 
 		if(dots == 6) 
 		{ 
 			ellipse(myX + 15, myY + 15, 5, 5); 
 			ellipse(myX + 35, myY + 35, 5, 5); 
 			ellipse(myX + 35, myY + 15, 5, 5); 
 			ellipse(myX + 15, myY + 35, 5, 5); 
 			ellipse(myX + 15, myY + 25, 5, 5); 
 			ellipse(myX + 35, myY + 25, 5, 5); 
 		} 
 		sum = sum + dots; 
 	} 
}  