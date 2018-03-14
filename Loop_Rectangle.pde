size(600, 600);
background(0);
strokeWeight(2);
stroke(255);

int x = 0; 
int y = 0;

for(x = 0; x <= width; x += 20) {
  fill(random(120), 0,random(0));
for(y = 0; y < height; y += 20) {
  fill(random(220), 0, random(0));
  rect(x,y,50,50);

}
}