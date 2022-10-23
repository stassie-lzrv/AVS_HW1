#include <stdio.h>
void input_(FILE * input, int *a, int N){
  for(int i = 0; i < N; i++){
    fscanf(input, "%d", &a[i]);
  }
}
int f1(int *a, int *b, int N){
  int count = 0;
  for(int i = 0; i < N;i++){
    if(a[i] % 2 != 0){
      b[count] = a[i];
      count++;
    }
  }
  return count;
}
void output(FILE * out, int *b, int count){
  for(int i = 0; i< count; i++){
    fprintf(out, "%d ", b[i]);
  }
}
int main(int argc, char * argv[]) {
  FILE * input = fopen(argv[1], "r");
  FILE * out = fopen(argv[2], "w");
  int N;
  fscanf(input, "%d", &N);
  int a[N*sizeof(int)];
  int b[N*sizeof(int)];
  input_(input, a, N);
  int count = f1(a, b, N);
  output(out, b, count);  
  fclose(input);
  fclose(out);
  return 0;
}