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

void swap(int *n, int *m){
    int *swap = n;
    n = m;
    m = swap;
}

void printArray(int arr[], int n){
    printf("Sorted Array:\n");
    for(int i=0 ; i<n ; i++)
    {
        printf("%d ",arr[i]);
    }
    printf("\n");
}

void merge(int arr[], int low, int mid, int high){
    int n = mid-low+1;
    int m = high-mid;

    int a[n], b[m];

    for (int i = 0; i < n; i++)
        a[i] = arr[low+i];

    for (int j = 0; j < m; j++)
        b[j] = arr[mid+1+j];   
    

    int i = 0, j = 0, k = low;
    while (i<n && j<m){
        if(a[i] <= b[j])
            arr[k++] = a[i++];
        if(a[i] > b[j])
            arr[k++] = b[j++];
    }

    
        while (i<n)
            arr[k++] = a[i++];
    
        while (j<m)
            arr[k++] = b[j++];
}

void mergeSort(int arr[],int low, int high){
    if(low < high){
        int mid = low + (high-low)/2;
        mergeSort(arr, low, mid);
        mergeSort(arr, mid + 1, high);
        merge(arr, low, mid, high);
    }
}



int main(){
    // int arr[10] = {6,8,1,3,7,34,2,61,11,56};
    // mergeSort(arr,0,9);
    // printArray(arr, 10);
    int arr100[100];
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        mergeSort(arr100,0,100);
        printArray(arr100, 100);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100.txt",arr100, 100)){
        clock_t t = clock();
        mergeSort(arr100,0,100);
        printf("\nExecution time of average case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100.txt",arr100, 100)){
        clock_t t = clock();
        mergeSort(arr100,0,100);
        printf("\nExecution time of worst case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr1000[1000];
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        mergeSort(arr1000,0,1000);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        mergeSort(arr1000,0,1000);
        printf("\nExecution time of average case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        mergeSort(arr1000,0,1000);
        printf("\nExecution time of worst case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr10000[10000];
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        mergeSort(arr10000,0,10000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        mergeSort(arr10000,0,10000);
        printf("\nExecution time of average case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        mergeSort(arr10000,0,10000);
        printf("\nExecution time of worst case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr100000[100000];
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        mergeSort(arr100000,0,100000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        mergeSort(arr100000,0,100000);
        printf("\nExecution time of average case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        mergeSort(arr100000,0,100000);
        printf("\nExecution time of worst case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    return 0;
}