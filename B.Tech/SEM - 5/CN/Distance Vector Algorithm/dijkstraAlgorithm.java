import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Scanner;

public class dijkstraAlgorithm {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of vertices : ");
        int vertices = sc.nextInt();

        // Use an array of ArrayLists for the adjacency list
        List<int[]>[] graph = new ArrayList[vertices];
        for (int i = 0; i < vertices; i++) {
            graph[i] = new ArrayList<>();
        }

        System.out.print("Enter Number of edges : ");
        int edges = sc.nextInt();
        for (int i = 0; i < edges; i++) {
            System.out.print("Source :");
            int src = sc.nextInt();
            System.out.print("Destination :");
            int dis = sc.nextInt();
            System.out.print("Weight :");
            int weight = sc.nextInt();
            System.out.println();
            
            // Add edges to the adjacency list
            graph[src].add(new int[]{dis, weight});
            graph[dis].add(new int[]{src, weight});
        }

        // The priority queue for Dijkstra's. It stores {vertex, distance}
        // sorted by distance.
        PriorityQueue<int[]> pq = new PriorityQueue<>((a, b) -> Integer.compare(a[1], b[1]));

        int[] distance = new int[vertices];
        for (int i = 0; i < vertices; i++) {
            distance[i] = Integer.MAX_VALUE;
        }

        int startNode = 0; 
        distance[startNode] = 0;
        pq.offer(new int[]{startNode, 0});

        while (!pq.isEmpty()) {
            int[] current = pq.poll();
            int u = current[0];
            int dist_u = current[1];

            // If we find a shorter path to 'u' already, skip it.
            if (dist_u > distance[u]) {
                continue;
            }

            // Iterate through the neighbors of the current vertex
            for (int[] neighbor : graph[u]) {
                int v = neighbor[0];
                int weight = neighbor[1];

                // Relaxation step: If a shorter path is found, update distance and add to PQ
                if (distance[v] > distance[u] + weight) {
                    distance[v] = distance[u] + weight;
                    pq.offer(new int[]{v, distance[v]});
                }
            }
        }

        System.out.println("Shortest distances from source " + startNode + ":");
        for (int i = 0; i < vertices; i++) {
            System.out.println("Vertex " + i + ": " + distance[i]);
        }
        sc.close();
    }
}