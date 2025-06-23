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

void heapify(int arr[], int n, int i){
    int largest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;
    if(l<n && arr[l] > arr[largest])
        largest = l;

    if(r<n && arr[r] > arr[largest])
        largest = r;

    if(largest != i){
        int temp = arr[i];
        arr[i] = arr[largest];
        arr[largest] = temp;
        heapify(arr, n, largest);
    }
}

void heapSort(int arr[], int n){
    for (int i = n/2 - 1; i >= 0; i--){
        heapify(arr, n, i);
    }
    for (int i = n-1 ; i >= 0; i--){
        int temp = arr[i];
        arr[i] = arr[0];
        arr[0] = temp;

        heapify(arr, i, 0);
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
        heapSort(arr100,100);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100.txt",arr100, 100)){
        clock_t t = clock();
        heapSort(arr100,100);
        printf("\nExecution time of average case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100.txt",arr100, 100)){
        clock_t t = clock();
        heapSort(arr100,100);
        printf("\nExecution time of worst case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr1000[1000];
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        heapSort(arr1000,1000);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        heapSort(arr1000,1000);
        printf("\nExecution time of average case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        heapSort(arr1000,1000);
        printf("\nExecution time of worst case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr10000[10000];
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        heapSort(arr10000,10000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        heapSort(arr10000,10000);
        printf("\nExecution time of average case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        heapSort(arr10000,10000);
        printf("\nExecution time of worst case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr100000[100000];
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        heapSort(arr100000,100000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        heapSort(arr100000,100000);
        printf("\nExecution time of average case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        heapSort(arr100000,100000);
        printf("\nExecution time of worst case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
}