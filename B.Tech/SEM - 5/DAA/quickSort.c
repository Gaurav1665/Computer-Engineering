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

int pivot(int arr[], int i, int j){
    int pivot = arr[i];
    int k = i, l = j+1;
    do{
        k += 1;
    } while (k < l && arr[k] <= pivot );

    do{
        l -= 1;
    } while (arr[l] > pivot);

    while (k<l){
        swap(&arr[k], &arr[l]);
        do{
            k += 1;
        } while (arr[k] <= pivot && k < j);

        do{
            l -= 1;
        } while (arr[l] > pivot && l > i);
    }
    swap(&arr[i], &arr[l]);
    return l;
}

void quickSort(int arr[],int i, int j){
    if(j > i){
        int l = pivot(arr, i, j);
        quickSort(arr, i, l-1);
        quickSort(arr, l+1, j);
    }
}

int main(){
    int arr100[100];
    if(readFile("D:\\gaurav\\testcases\\best_case_100.txt",arr100, 100)){
        clock_t t = clock();
        quickSort(arr100,0,100);
        printf("\nExecution time of best case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100.txt",arr100, 100)){
        clock_t t = clock();
        quickSort(arr100,0,100);
        printf("\nExecution time of average case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100.txt",arr100, 100)){
        clock_t t = clock();
        quickSort(arr100,0,100);
        printf("\nExecution time of worst case with 100 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr1000[1000];
    if(readFile("D:\\gaurav\\testcases\\best_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        quickSort(arr1000,0,1000);
        printf("\nExecution time of best case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        quickSort(arr1000,0,1000);
        printf("\nExecution time of average case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_1000.txt",arr1000, 1000)){
        clock_t t = clock();
        quickSort(arr1000,0,1000);
        printf("\nExecution time of worst case with 1000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr10000[10000];
    if(readFile("D:\\gaurav\\testcases\\best_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        quickSort(arr10000,0,10000);
        printf("\nExecution time of best case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        quickSort(arr10000,0,10000);
        printf("\nExecution time of average case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_10000.txt",arr10000, 10000)){
        clock_t t = clock();
        quickSort(arr10000,0,10000);
        printf("\nExecution time of worst case with 10000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    printf("\n");

    int arr100000[100000];
    if(readFile("D:\\gaurav\\testcases\\best_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        quickSort(arr100000,0,100000);
        printf("\nExecution time of best case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\average_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        quickSort(arr100000,0,100000);
        printf("\nExecution time of average case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    if(readFile("D:\\gaurav\\testcases\\worst_case_100000.txt",arr100000, 100000)){
        clock_t t = clock();
        quickSort(arr100000,0,100000);
        printf("\nExecution time of worst case with 100000 elements = %f", ((double)(clock() - t)/CLOCKS_PER_SEC));
    }
    return 0;
}