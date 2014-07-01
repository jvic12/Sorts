int[] cheesesticks = {200, 40, 170, 50, 70, 60, 80, 90, 190, 150, 100, 110, 120, 140, 180, 130, 20, 160, 30, 10};

int i = -1;
int j = 0;
int min;

boolean isRunning = true;

void setup() {
  size (250, 250);

/*int min;
for (int i = 1; i < 20; i++) {
  for (int j = 1; j < 20; j++) {
    if (arr[j] < arr[j-1]) {
      //swapping algorithm
      min = arr[j];
      arr[j] = arr[j-1];
      arr[j-1] = min;
    }
  }
}
*/


/*for (int x = 0; x < 20; x++) {
  print(cheesesticks[x]);
}*/

}

void draw() {
  if(isRunning){
      background(200);
      
      // only runs after j reaches 20  
      if ((j == 20) && (i < 19)) {
         i++;
         j=i+1;
         min = cheesesticks[i];
      }
     
      // runs as long as j is less than 20
      if (j < 20) {
        if (cheesesticks[j] < min){
          min = cheesesticks[j];
          //
          int temp = cheesesticks[i];
          cheesesticks[i] = cheesesticks[j];
          cheesesticks[j] = temp;
        }
        j++;
      }
  
      fill(#EA5353);

      for (int y=0; y<20; y++) {
        rect(0, y*10,cheesesticks[y], 5);
      }
      
  }
  if(keyPressed){
       isRunning = !isRunning;
  }
  
} 

