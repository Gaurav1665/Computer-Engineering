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

int search(int arr[],int n, int x){
    for (int i=0 ; i<n ; i++){
        if(arr[i]==x){
            return x;
        }
    }
    return -1;
}

int main(){
    int arr100[100];
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        search(arr100,100,1);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        search(arr100,100,50);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        search(arr100,100,100);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr1000[1000];
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        search(arr1000,1000,1);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        search(arr1000,1000,500);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        search(arr1000,1000,1000);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr10000[10000];
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        search(arr10000,10000,1);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        search(arr10000,10000,5000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        search(arr10000,10000,10000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr100000[100000];
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        search(arr100000,100000,1);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        search(arr100000,100000,50000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        search(arr100000,100000,100000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    return 0;
}