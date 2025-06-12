#include <stdio.h>

float power(int x, int y){
    if(y==0){
        return 1.0;
    }
    else if(y<0){
        return 1.0/x * power(x,y+1);
    }
    else{
        return x * power(x,y-1);
    }
}

int main(){
    int x,y;
    scanf("%d",&x);
    scanf("%d",&y);
    printf("%f",power(x,y));
    return 0;
}