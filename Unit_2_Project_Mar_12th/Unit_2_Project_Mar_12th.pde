//Johnson Xia
//2-1
//March 3rd, 2026
void setup() {
  size(800, 600);
  background(237, 72, 72);
}
float m = 50; 
float x = 50;
void draw() {
  background(237, 72, 72);
  buildings();
  UFO2(); 
  m = m + 1;
  if (m > 100) { 
    m = -200;
  }
  UFO(); 
  x = x + 1;
  if (x > 200) {
    x = -200;
  }
}
void UFO2() {
  pushMatrix(); 
  translate(200, m); 
  stroke(0); 
  fill(180, 160, 127);
  ellipse(0, 0, 60, 30);
  fill(248, 255, 70); 
  ellipse(0, 0, 10, 5);
  popMatrix(); 
}  
void UFO() {
  pushMatrix();
  translate(300, x); 
  stroke(0); 
  fill(180, 160, 127);
  ellipse(0, 0, 100, 50);
  fill(248, 255, 70); 
  ellipse(0, 0, 20, 10); 
  popMatrix();
}

void car() {
  translate(500, 400);
  stroke(0);
  strokeWeight(2);
  fill(100, 62, 41);
  beginShape();
  vertex(32, 22);
  vertex(91, 19);
  vertex(151, 92);
  vertex(77, 93);
  endShape(CLOSE);
  rect(77, 93, 74, 30);
  fill(0);
  beginShape();
  vertex(77, 93);
  vertex(77, 123);
  vertex(32, 52);
  vertex(32, 22);
  endShape(CLOSE);
  ellipse(45, 65, 20, 30);
  ellipse(65, 100, 20, 30);
  rect(55, 45, 68, 20);
  fill(255);
  ellipse(90, 110, 10, 10);
  ellipse(140, 110, 10, 10);
}
void buildings() {
  strokeWeight(3);

  //Left first building
  fill(206, 203, 139); // Set the fill color (RGB)
  stroke(0);           // Set the outline color
  strokeWeight(2);     // Set the outline thickness

  beginShape();
  vertex(0, 94);    // Point 1
  vertex(59, 127);     // Point 2
  vertex(59, 433);    // Point 3
  vertex(0, 465);    // Point 4
  vertex(0, 94);    // Point 5
  endShape(CLOSE);

  stroke(0);
  strokeWeight(3.2);
  fill(155, 117, 47);
  line(29, 143, 29, 446);
  line(0, 128, 58, 154);
  line(0, 160, 58, 183);
  line(0, 192, 58, 212);
  line(0, 224, 58, 241);
  line(0, 260, 58, 270);
  line(0, 296, 58, 299);
  line(0, 336, 58, 328);
  line(0, 377, 58, 358);
  line(0, 420, 58, 394);

  //Left second building

  stroke(0);
  strokeWeight(2);
  fill(0);
  beginShape();
  vertex(59, 433);
  vertex(59, 213);
  vertex(66, 215);
  vertex(66, 429);
  endShape(CLOSE);

  fill(191, 141, 112);
  pushMatrix();
  translate(127, 233);
  rotate(radians(15));
  arc(0, 0, 50, 50, PI, TWO_PI);
  popMatrix();

  fill(191, 141, 112);
  stroke(0);
  strokeWeight(2);

  beginShape();
  vertex(59, 213);
  vertex(190, 245);
  vertex(189, 360);
  vertex(59, 433);
  endShape(CLOSE);

  //Sky
  fill(43, 43, 43);
  noStroke();

  beginShape();
  vertex(0, 94);
  vertex(59, 127);
  vertex(200, 0);
  vertex(0, 0);
  endShape(CLOSE);

  fill(255);
  ellipse(23, 24, 2, 2);
  ellipse(34, 38, 2, 2);
  ellipse(41, 88, 2, 2);
  ellipse(82, 48, 2, 2);
  ellipse(118, 27, 2, 2);
  ellipse(102, 22, 2, 2);

  //Right building

  fill(206, 203, 139);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(800, 465);
  vertex(703, 411);
  vertex(703, 204);
  vertex(799, 147);
  endShape(CLOSE);

  //Second right building
  fill(191, 141, 112);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(703, 411);
  vertex(611, 360);
  vertex(611, 293);
  vertex(657, 256);
  vertex(703, 302);
  endShape(CLOSE);

  fill(149, 91, 59);
  triangle(657, 256, 703, 302, 703, 278);

  fill(98, 95, 93);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(0, 465);
  vertex(189, 359);
  vertex(611, 360);
  vertex(800, 465);
  vertex(800, 600);
  vertex(0, 600);
  endShape(CLOSE);

  fill(80, 77, 75);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(611, 360);
  vertex(580, 360);
  vertex(800, 516);
  vertex(800, 465);
  endShape(CLOSE);

  //UFO stationary
  fill(180, 160, 127);
  ellipse(630, 30, 300, 200);
  fill(0);
  ellipse(630, 30, 100, 70);
  fill(249, 250, 98);
  ellipse(630, 35, 100, 60);

  fill(185, 181, 178);
  beginShape();
  vertex(200, 359);
  vertex(210, 359);
  vertex(0, 520);
  vertex(0, 500);
  endShape(CLOSE);

  //Background buildings
  noStroke();
  fill(95, 1, 12);
  rect(191, 320, 20, 39);
  rect(210, 340, 400, 20);
  rect(235, 292, 20, 50);
  triangle(235, 292, 255, 292, 245, 280);
  rect(399, 317, 10, 40);
  rect(429, 298, 15, 60);
  rect(524, 278, 20, 70);
  triangle(524, 278, 544, 278, 534, 248);
  fill(234, 227, 83);
  triangle(267, 340, 275, 340, 271, 250);
  triangle(267, 340, 254, 340, 260, 240);
  triangle(236, 340, 220, 340, 228, 260);
  triangle(220, 340, 211, 340, 215, 250);
  triangle(275, 340, 290, 340, 282, 280);
  triangle(290, 340, 300, 340, 295, 255);
  triangle(300, 340, 315, 340, 307, 265);
  triangle(315, 340, 325, 340, 320, 280);
  triangle(325, 340, 335, 340, 330, 260);
  triangle(335, 340, 350, 340, 342, 250);
  triangle(350, 340, 360, 340, 355, 260);
  triangle(360, 340, 380, 340, 370, 280);
  triangle(385, 340, 395, 340, 392, 285);
  triangle(415, 340, 425, 340, 420, 235);
  triangle(445, 340, 455, 340, 450, 280);
  triangle(455, 340, 470, 340, 463, 255);
  triangle(470, 340, 490, 340, 480, 265);
  triangle(490, 340, 500, 340, 495, 235);
  triangle(500, 340, 515, 340, 507, 255);
  triangle(515, 340, 525, 340, 520, 245);
  triangle(545, 340, 560, 340, 552, 255);
  triangle(560, 340, 570, 340, 565, 250);
  triangle(570, 340, 585, 340, 577, 265);
  triangle(585, 340, 600, 340, 592, 275);
  triangle(600, 340, 610, 340, 605, 290);
}
