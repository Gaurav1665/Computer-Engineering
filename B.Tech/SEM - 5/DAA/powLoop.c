#include <stdio.h>

int main(){
    int x,y,sum=1;
    scanf("%d",&x);
    scanf("%d",&y);
    while(y>0){
        sum *= x;
        y--;
    }
    printf("%d",x);
    return 0;
}