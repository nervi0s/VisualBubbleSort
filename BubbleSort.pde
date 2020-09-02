int [] numbers;
int i=0;
int j=0;

void setup() {

  size(800, 500);
  frameRate(60);

  numbers = new int[width];

  for (int i = 0; i < numbers.length; i ++) {
    numbers[i] = (int)random(height);
  }
}

void draw() {
  background(0);

  for (int x = 0; x < numbers.length; x += 1) {
    stroke(204, 0, 255);
    line(x, height, x, height - numbers[x]);
  }


  for (int m = 0; m < 800; m ++) {
    if (i < numbers.length) {
      if (j < numbers.length - i - 1) {
        if (numbers[j] > numbers[j+1]) {
          intercambiar(numbers, j, j + 1);
        }
      }
      j++;
      if (j == numbers.length) {
        i++;
        j = 0;
      }
    }
    println(numbers.length + " " + i +" "+ j);
  }
}




void intercambiar (int[] numbers, int index1, int index2) {
  int aux = numbers[index1];
  numbers[index1] =  numbers[index2];
  numbers[index2] = aux;
}
