int [] numbers = {122, 225, 461, 197, 408, 163, 384, 104, 115, 138, 467, 347, 118, 439, 386, 237, 325, 478, 139, 113, 155, 189, 167, 187, 393, 179, 437, 349, 473, 256, 316, 414, 132, 304, 250, 334, 218, 394, 414, 452, 224, 427, 364, 415, 141, 238, 245, 221, 252, 442, 202, 281, 368, 166, 189, 169, 104, 417, 277, 241, 127, 492, 472, 196, 136, 153, 269, 273, 181, 207, 159, 224, 375, 345, 457, 456, 251, 181, 302, 148, 419, 106, 311, 470, 133, 259, 227, 398, 297, 351, 218, 246, 125, 236, 398, 261, 280, 188, 248, 253};
int desplazamiento;
int i;
int j;

void setup() {
  size(800, 500);
  desplazamiento = 0;
  i = 0;
  j = 0;
  //frameRate(1);
}

void draw() {
  background(255);

  for (int x = 0; x < numbers.length; x++) { // Draw lines
    strokeWeight(2);
    line(desplazamiento, height, desplazamiento, height - numbers[x]);
    desplazamiento += width/numbers.length;
  }

  desplazamiento = 0;
  ////for (int v = 0; v < 10; v++) { // For bucle to change "velocity" 1 for defaulr, 2 more velocity, 3 more, ... 9, 10, etc etc
  if (i < numbers.length) { // Classic for loop "transformation" in global variables (i , j) to draw every single pair of values sorting
    if (j < numbers.length - i - 1) {
      if (numbers[j] > numbers[j +1]) {
        intercambiar(numbers, j, j+1);
      }
      j++;
    }
    if (j == numbers.length - i - 1) {
      i++;
      j = 0;
    }
  }
  ////}
  println(numbers.length + " " + i +" "+ j);
}

void intercambiar(int[] array, int before, int after) { // Change position values
  int aux = array[before];
  array[before] = array[after];
  array[after] = aux;
}
