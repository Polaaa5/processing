int[] array = new int[35];
int p = 0;
int r = 0;
int temp;
void setup() {
    size(600, 650);
    for (int i = 0; i < array.length; i++) {
        array[i] = (int) random(50);
    }
    frameRate(10);
}
void draw() {
    background(25, 230, 57);
    for (p = 0; p < array.length; p++) {
        if (array[r] < array[p]) {
            temp = array[p];
            array[p] = array[r];
            array[r] = temp;
        }
        fill(100, 45, 90);
        strokeWeight(5);
        rect(75, 10 + 16 * p, 75 + 8 * array[p], 19);
    }
    r++;
    if (r > array.length - 1) {
        noLoop();
    }
}
