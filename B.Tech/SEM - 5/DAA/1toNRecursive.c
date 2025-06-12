#include <stdio.h>

void oneToN(int i, int n){
    if(i<=n){
        printf("%d ",i);
        oneToN(i+1,n);
    }
    else{
        return;
    }
}

int main(){
    int n;
    scanf("%d",&n);
    oneToN(1,n);
    return 0;
}