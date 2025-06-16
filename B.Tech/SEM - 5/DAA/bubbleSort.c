#include <stdio.h>
#include <time.h>
#define N 100

int readFile(const char *filename, int arr[], int n){
    FILE *f = fopen(filename,"r");
    if(!f){
        printf("\ncan not open file\n");
        return 0;
    }
    for(int i=0 ; i<n ; i++){
        fscanf(f,"%d ",&arr[i]);
    }
    return 1;
}

void bubbleSort(int arr[], int n){
    int swapped = 0;
    for (int i = 0; i < n-1; i++){
        for(int j=0 ; j<n-i-1 ; j++){
            if(arr[j] > arr[j+1]){
                int swap = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = swap;
                swapped += 1;
            }
        }
        if (swapped==0){
            break;
        }
    }
    
}

void printArray(int arr[], int n){
    printf("Sorted Array:\n");
    for(int i=0 ; i<n ; i++)
    {
        printf("%d ",arr[i]);
    }
    printf("\n");
}

int main(){
    int arr100[100];
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        bubbleSort(arr100,100);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100.txt",arr100, 100)){
        clock_t t = clock();
        bubbleSort(arr100,100);
        printf("\nExecution time of average case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100.txt",arr100, 100)){
        clock_t t = clock();
        bubbleSort(arr100,100);
        printf("\nExecution time of worst case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");
    int arr1000[1000];
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        bubbleSort(arr1000,1000);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        bubbleSort(arr1000,1000);
        printf("\nExecution time of average case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        bubbleSort(arr1000,1000);
        printf("\nExecution time of worst case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");
    int arr10000[10000];
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        bubbleSort(arr10000,10000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        bubbleSort(arr10000,10000);
        printf("\nExecution time of average case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        bubbleSort(arr10000,10000);
        printf("\nExecution time of worst case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");
    int arr100000[100000];
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        bubbleSort(arr100000,100000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        bubbleSort(arr100000,100000);
        printf("\nExecution time of average case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        bubbleSort(arr100000,100000);
        printf("\nExecution time of worst case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
}