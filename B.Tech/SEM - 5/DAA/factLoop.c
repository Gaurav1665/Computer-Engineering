#include <stdio.h>

int main(){
    int n,sum = 1;
    scanf("%d",&n);
    while(n>0){
        sum *= n--;
    }
    printf("fact = %d",sum);
    return 0;
}