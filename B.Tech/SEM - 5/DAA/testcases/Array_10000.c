#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define N 10000

void bestCase100(){
    FILE *f = fopen("best_case_10000.txt","w");
    for (int i = 1; i <= N; i++){
        fprintf(f, "%d ",i);
    }
    fclose(f);
}

void worstCase100(){
    FILE *f = fopen("worst_case_10000.txt","w");
    for (int i = N; i >= 1; i--){
        fprintf(f, "%d ",i);
    }
    fclose(f);
}

void averageCase100(){
    int arr[N];
    for (int i = 0; i < N; i++){
        arr[i] = i+1;
    }

    srand(time(NULL));
    for(int i=N-1 ; i>0 ; i--){
        int j = rand() % (i+1);
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }

    FILE *f = fopen("average_case_10000.txt","w");
    for (int i = 0; i < N; i++){
        fprintf(f, "%d ",arr[i]);
    }
    fclose(f);
}

int main(){
    bestCase100();
    worstCase100();
    averageCase100();
    return 0;
}