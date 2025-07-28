#include <stdio.h>
struct Edge{
    int source;
    int destination;
    int weight;
};

void sortedges(struct Edge edges[], int E){
    for (int i = 0; i < E; i++){
        struct Edge key = edges[i];
        int j = i - 1;

        while (key.weight < edges[j].weight && j >= 0){
            edges[j+1] = edges[j];
            j--;
        }
        edges[j+1] = key;
    }
}

int find(int parent[], int i){
    if (parent[i] == i) return i;
    else return find(parent, parent[i]);
}

void unionSet(int parent[], int u, int v){
    parent[u] = v;
}

void kruskal(struct Edge edges[], int V, int E){
    int parent[V-1];

    for (int i = 0; i < V; i++){
        parent[i] = i;
    }

    struct Edge st[E-1];
    int edge = 0;

    sortedges(edges, E);

    for (int i = 0; i < E; i++){
        int u = edges[i].source;
        int v = edges[i].destination;

        int ucomp = find(parent, u);
        int vcomp = find(parent, v);

        if(ucomp != vcomp){
            st[edge] = edges[i];
            unionSet(parent, ucomp, vcomp);
            edge++;
        }

        if(edge == V-1) break;
    }

    int totalWeight = 0;

    for (int i = 0; i < V-1; i++){
        printf("%d | %d | %d\n",st[i].source,st[i].destination,st[i].weight);
        totalWeight += st[i].weight;
    }

    printf("total weight : %d",totalWeight);
    
}

void main(){
    int V = 7;
    int E = 11;

    struct Edge edges[] = {
        {0,1,7},
        {0,3,5},
        {1,2,8},
        {1,3,9},
        {1,4,7,},
        {2,4,5},
        {3,4,15},
        {3,5,6},
        {4,5,8},
        {4,6,9},
        {5,6,11},
    };

    kruskal(edges, V, E);
}
