import java.util.PriorityQueue;
import java.util.Scanner;

public class dijkstraAlgorithm {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Number of vertices : ");
        int vertices = sc.nextInt();
        System.out.print("Enter Number of edges : ");
        int edges = sc.nextInt();

        int[][][] graph = new int[vertices][][];
        for(int i=0 ; i<edges ; i++){
            System.out.print("Sor :");
            int src = sc.nextInt();
            System.out.print("Dis :");
            int dis = sc.nextInt();
            System.out.print("Val :");
            int val = sc.nextInt();
            System.out.println();
            graph[src] = new int[][] {{dis, val}};
            graph[dis] = new int[][] {{src, val}};
        }

        PriorityQueue<int[]> pq = new PriorityQueue<int[]>((a, b) -> Integer.compare(a[1], b[1]));

        int[] distance = new int[vertices];
        for(int i=0 ; i<vertices ; i++)
            distance[i] = Integer.MAX_VALUE;

        int[] start = new int[]{0, 0};
        pq.offer(start);

        while(!pq.isEmpty()) {
            int[] curr = pq.poll();
            int u = curr[0];

            for (int[] neighbor : graph[u]) {
                int v = neighbor[0];
                int weight = neighbor[1];

                if (distance[v] > distance[u] + weight) {
                    distance[v] = distance[u] + weight;

                    pq.offer(new int[]{ v ,distance[v] });
                }
            }
        }

        for(int i : distance){
            System.out.print(i+" ");
        }
    }
}