int[] array = new int[7];
   void setup() {
     size(900,600);
     for (int i=0; i<array.length; i++) {
       array[i] = (int)random(5, 350);
     }
     frameRate(6);
   }
   int i=0;
   int temp;
   void draw() {
     background(180);
 
     for (int j=0; j<array.length; j++) {
       if (array[i]<array[j]) {
         temp = array[j];
         array[j] = array[i];
         array[i] = temp;
       }
        stroke(0);
       //strokeWeight(2);
       fill(24,14,224);
       rect(150*j, j+300, 25, -array[j]);
       fill(0, 0, 0);
       text(array[j], 150*j, 350+j);
     }
     i++;  
     if (i>array.length-1)
       noLoop();
   }
