int r,g,b;
public void setup(){
	size(500,500);
	rectMode(CENTER);
}

public void draw(){
	background(0);
	fractal(250,250,480);
}

public void fractal(int x, int y, int siz){
	r = (int)(Math.random()*255);
	g = (int)(Math.random()*255);
	b = (int)(Math.random()*255);
	fill(r,g,b);
	ellipse(x,y,siz,siz);
	if(siz > 5){
		fractal(x-siz/2,y,siz/2);
		fractal(x+siz/2,y,siz/2);
		fractal(x,y-siz/2,siz/2);
		fractal(x,y+siz/2,siz/2);
	}
}