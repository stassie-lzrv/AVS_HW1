#include <stdio.h>

int main(void) {
  int N;
  scanf("%d", &N);
  int a[N*sizeof(int)];
  int b[N*sizeof(int)];
  for(int i = 0; i < N; i++){
    scanf("%d", &a[i]);
  }
  int count = 0;
  for(int i = 0; i < N;i++){
    if(a[i] % 2 != 0){
      b[count] = a[i];
      count++;
    }
  }
  for(int i = 0; i< count; i++){
    printf("%d ", b[i]);
  }
  return 0;
}