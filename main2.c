#include <stdio.h>
void input(int *a, int N){
  for(int i = 0; i < N; i++){
    scanf("%d", &a[i]);
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
void out(int *b, int count){
  for(int i = 0; i< count; i++){
    printf("%d ", b[i]);
  }
}
int main(void) {
  int N;
  scanf("%d", &N);
  int a[N*sizeof(int)];
  int b[N*sizeof(int)];
  input(a, N);
  int count = f1(a, b, N);
  out(b, count);  
  return 0;
}