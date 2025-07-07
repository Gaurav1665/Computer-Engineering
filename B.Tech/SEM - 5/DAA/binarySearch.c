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

int search(int arr[], int i, int j, int x){
    int temp = (i+j)/2;
    if(arr[temp]==x){
        return arr[temp];
    } else if(arr[temp] < x){
        search(arr, temp+1, j, x);
    } else if(arr[temp] > x){
        search(arr, i, temp-1, x);
    }
    return -1;
}

int main(){
    int arr100[100];
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        search(arr100, 0, 99, 1);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        search(arr100, 0, 99,50);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        search(arr100, 0, 99,100);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr1000[1000];
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        search(arr1000, 0, 999,1);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        search(arr1000,0, 999,500);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        search(arr1000,0, 999,1000);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr10000[10000];
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        search(arr10000,0, 9999,1);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        search(arr10000,0, 9999,5000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        search(arr10000,0, 9999,10000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr100000[100000];
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        search(arr100000,0, 99999,1);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        search(arr100000,0, 99999,50000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        search(arr100000,0, 99999,100000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    return 0;
}