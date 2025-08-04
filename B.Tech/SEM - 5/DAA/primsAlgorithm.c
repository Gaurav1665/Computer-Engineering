#include <stdio.h>
#include <limits.h>

#define V 6

void main(){
    int graph[V][V] = {
        { 0,  9, 22,  0, 11, 12},
        { 9,  0, 16,  0, 14,  8},
        {22, 16,  0, 15, 18,  0},
        { 0,  0, 15,  0,  3,  0},
        {11, 14, 18,  3,  0,  0},
        {12,  8,  0,  0,  0,  0}
    };

    int visited[V];
    
    for (int i = 0; i < V; i++)
        visited[i]=0;
    
    visited[0] = 1;

    int edges = 0;

    while (edges < V-1){
        int min = __INT_MAX__;
        int x=0, y=0;
        for (int i = 0; i < V; i++){
            if (visited[i]){
                for (int j = 0; j < V; j++){
                    if(!visited[j] && graph[i][j]){
                        if(graph[i][j] < min){
                            min = graph[i][j];
                            x = i;
                            y = j;
                        }
                    }
                }
            }
        }
        printf("%d - %d\t%d\n",x,y,graph[x][y]);
        visited[y] = 1;
        edges++;
    }
}