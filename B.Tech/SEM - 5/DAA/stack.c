#include <Stdio.h>

struct stack
{
    int top;
    int arr[100];
}s;

void PUSH(int n){
    s.top = s.top + 1;
    s.arr[s.top] = n;
}

void POP(){
    if(s.top > 0 ){
        printf("removed = %d\n",s.arr[s.top]);
        s.top = s.top - 1;
    } else{
        printf("Stack is Empty\n");
    }
}

void DISPLAY(){
    int i = 1;
    while (i <= s.top){
        printf("%d",s.arr[i]);
        i++;
    }
    printf("\n");
}

void main(){
    PUSH(1);
    DISPLAY();
    PUSH(2);
    DISPLAY();
    PUSH(3);
    DISPLAY();
    PUSH(4);
    DISPLAY();
    POP();
    DISPLAY();
    POP();
    DISPLAY();
    POP();
    DISPLAY();
}