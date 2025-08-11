#include <Stdio.h>
#define V 5
int arr[V] = {0};
int front = -1, rear = -1;


void enqueue(int n){
    if(rear >= V){
        printf("Queue Overflow\n");
    } else if(rear == -1){
        rear = front = 0;
        arr[rear] = n;
    } else{
        rear++;
        arr[rear] = n;
    }
}

int dequeue(){
    if(front == -1){
        printf("Queue Underflow\n");
    } else if(front == rear){
        front = -1;
        rear = -1;
    } else{
        int temp = arr[front];
        front++;
        return temp;
    }
}

void BFS(int graph[V][V]){
    int visited[V] = {0};
    visited[0] = 1;

    enqueue(0);

    while (front != -1 && rear != -1){
        int u = dequeue();
        printf("%d", u+1);
        for (int i = 0; i < V; i++){
            if(visited[i] == 0 && graph[u][i] != 0){
                visited[i] = 1;
                enqueue(i);
            }
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
    BFS(graph);
}

//       1
//      / |
//     2  5
//    /   |
//   3 ---4

// max value | 0 | 0.5 |  1  | 40+100   = 140
// min weight| 1 |  1  | 0.25| 60+80+25 = 165