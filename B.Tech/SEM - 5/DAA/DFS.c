#include <Stdio.h>
#define V 5

void DFS(int graph[V][V], int visited[V], int key){
    visited[key] = 1;
    printf("%d", key+1);
    for (int i = 0; i < V; i++){
        if(visited[i] == 0 && graph[key][i] != 0){
            DFS(graph, visited, i);
        }
    }
}

void main(){
    int graph[V][V] ={
        {0, 1, 0, 0, 1},
        {1, 0, 1, 0, 0},
        {0, 1, 0, 1, 0},
        {0, 0, 1, 0, 1},
        {1, 0, 0, 1, 0}
    };
    int visited[V] = {0};
    DFS(graph, visited, 0);
}